class Manage::UsersController < ApplicationController
  
  before_filter :authenticate
  
  def show
    @user = current_user
  end  
 
end
