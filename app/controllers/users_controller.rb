class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :favourites]

  def show()
    @user = User.find(params[:id])
  end

  def favourites()
    @user = User.find(params[:id])
  end

  private

  def set_user()
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to listings_path
    end
  end
end
