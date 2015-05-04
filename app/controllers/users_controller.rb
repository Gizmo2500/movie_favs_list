class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    id = params[:id]
    @users = User.find(id)
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
