class AccountsController < ApplicationController
  def new
    @account = Account.new
  end
  
  def create
    @account = Account.new(params[:account])
    if @account.save
      flash[:notice] = "Successfully registered."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end
  
  def edit
    @account = current_account
  end
  
  def update
    @account = current_account
    if @account.update_attributes(params[:account])
      flash[:notice] = "Successfully updated profile."
      redirect_to root_url
    else
      render :action => 'edit'
    end
  end
end
