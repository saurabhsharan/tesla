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
  
  def create_contractor
    contractor = Contractor.new
    contractor.full_name = params[:full_name]
    contractor.email = params[:email]
    # http://stackoverflow.com/a/3572953/1516425
    contractor.password = rand(36**10).to_s(36)
    
    if contractor.save
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
      render status: :unauthorized
    end
  end
end
