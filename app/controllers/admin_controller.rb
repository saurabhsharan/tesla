class AdminController < ApplicationController
  before_filter :check_admin, except: [:index, :login]

  def index
    if session[:admin_id]
      @admin = Admin.where(id: session[:admin_id]).first
      @contractors = Contractor.all
    else
      render :login
    end
  end

  def login
    admin = Admin.where(email: params[:email], password: params[:password])

    if admin.empty?
      flash[:error] = "Invalid login"
      render :login
    else
      session[:admin_id] = admin.first.id
      redirect_to action: :index
    end
  end

  def view_contractor
    @contractor = Contractor.where(id: params[:contractor_id])

    if @contractor.empty?
      flash[:error] = "Could not find contractor with ID #{params[:contractor_id]}"
    else
      @contractor = @contractor.first
      @all_voter_infos = @contractor.voter_gathered_infos.order(:voter_id)
      @completed_voter_infos = @all_voter_infos.where.not(email: nil)
    end
  end

  def create_contractor
    contractor = Contractor.new
    contractor.full_name = params[:full_name]
    contractor.email = params[:email]
    # http://stackoverflow.com/a/3572953/1516425
    # TODO(saurabh): password should really be hashed
    # TODO(saurabh): move password generating logic to Contractor model
    contractor.password = rand(36**10).to_s(36)

    if contractor.save
      # TODO(saurabh): move logic for generating random voters to VoterGatheredInfo model?
      # TODO(saurabh): don't include voters that we already have an email for in the original CSV file
      num_voters = params[:num_voters].to_i
      voter_ids = Voter.pluck(:id).shuffle[0..(num_voters-1)]

      for voter_id in voter_ids
        vgi = VoterGatheredInfo.new
        vgi.voter_id = voter_id
        vgi.contractor_id = contractor.id
        vgi.save
      end

      redirect_to action: :index
    else
      flash[:create_contractor_error] = "Contractor with email #{params[:email]} already exists"
      render :index
    end
  end

  private

    def check_admin
      if session[:admin_id]
        @admin = Admin.where(id: session[:admin_id]).first
      else
        # TODO(saurabh): i don't think this works
        render status: :unauthorized
        return false
      end
    end
end
