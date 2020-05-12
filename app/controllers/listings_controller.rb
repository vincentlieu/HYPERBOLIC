class ListingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user_listing, only: [:edit, :update, :destroy]
  before_action :set_listing, only: [:show]

  def index()
    @listings = Listing.all.order("listings.created_at DESC")
  end

  def new()
    set_variables()
    @listing = Listing.new
  end

  def show()
    @listing = Listing.find(params[:id])
  end

  def edit()
    set_variables()
    @listing = Listing.find_by_id(params[:id])

    if @listing
      render "edit"
    else
      redirect_to listings_path
    end
  end

  def create()
    set_variables()
    @listing = current_user.listings.create(listing_params)
    if @listing.errors.any?
      render "new"
    else
      redirect_to listings_path
    end
  end

  def update()
    @listing = current_user.listings.find_by_id(params[:id])
    set_variables()

    if @listing
      @listing.update(listing_params)
      if @listing.errors.any?
        render "edit"
      else
        redirect_to listing_path
      end
    else
      redirect_to listing_path
    end
  end

  def destroy()
    @listing = current_user.listings.find_by_id(params[:id])

    if @listing
      @listing.destroy
    end

    redirect_to listings_path
  end

  private

  def listing_params()
    params.require(:listing).permit(:title, :description, :brand_id, :condition_id, :category_id, :price, :picture)
  end

  def set_variables()
    @brand = Brand.all
    @clothing_category = Category.all
    @condition = Condition.all
  end

  def set_user_listing()
    @listing = current_user.listings.find_by_id(params[:id])

    if @listing == nil
      redirect_to listings_path
    end
  end
end
