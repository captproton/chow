class AccountSessionsController < ApplicationController
  def new
    @account_session = AccountSession.new
  end
  
  def create
    @account_session = AccountSession.new(params[:account_session])
    if @account_session.save
      flash[:notice] = "Successfully logged in."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end
  
  def destroy
    @account_session = AccountSession.find
    @account_session.destroy
    flash[:notice] = "Successfully logged out."
    redirect_to root_url
  end
end
