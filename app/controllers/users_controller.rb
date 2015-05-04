class UsersController < ApplicationController

  def index
    
  end

  def show
    if current_user
    @user = User.find(current_user)
      @content = current_user.contents
    else
      redirect_to new_user_session_path
    end
  end

  def new
  end

  def edit
  end

  def create

  end

  def delete
  end
  
end
