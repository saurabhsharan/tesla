class ContractorsController < ApplicationController
  def index
    if session[:contractor_id]
      @contractor = Contractor.where(id: session[:contractor_id])
      
      if @contractor.empty?
        # invalid/non-existent contractor_id
        session[:contractor_id] = nil
        render :login
      else
        @contractor = @contractor.first
      end
    else
      render :login
    end
  end

  def login
    contractor = Contractor.where(email: params[:email], password: params[:password])

    if contractor.empty?
      flash[:error] = "Invalid login"
      render :login
    else
      session[:contractor_id] = contractor.first.id
      redirect_to action: :index
    end
  end
  
  def update_voter_info
    contractor = Contractor.where(id: session[:contractor_id]).first
    vgi = contractor.voter_gathered_infos.where(id: params[:vgi_id])
    
    if vgi.empty?
      render json: { error: "Invalid vgi_id" }
    else
      vgi = vgi.first
      vgi.email = params[:email]
      vgi.save
      render nothing: true, status: :ok
    end
  end
end
