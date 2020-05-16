class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :favourites, :purchases, :selling]

  def show()
    @user = User.find(params[:id])
  end

  def favourites()
    @favourites = current_user.favourites
  end

  def purchases()
    @purchases = current_user.purchases.order("id DESC")
  end

  def listings()
    @listings = current_user.listings.order("id DESC")
  end

  private

  def set_user()
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to listings_path
    end
  end
end
