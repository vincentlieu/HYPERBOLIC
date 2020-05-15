class ListingsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :show, :edit, :update, :destroy]
  before_action :set_user_listing, only: [:edit, :update, :destroy]
  before_action :set_listing, only: [:show, :favourite]

  def index()
    @listings = Listing.all.order("listings.created_at DESC")
  end

  def new()
    set_variables()
    @listing = Listing.new
  end

  def show()
    @listing = Listing.find(params[:id])

    session = Stripe::Checkout::Session.create(
      payment_method_types: ["card"],
      customer_email: current_user.email,
      line_items: [{
        name: @listing.title,
        description: @listing.description,
        amount: @listing.price * 100,
        currency: "aud",
        quantity: 1,
      }],
      payment_intent_data: {
        metadata: {
          user_id: current_user.id,
          listing_id: @listing.id,
        },
      },
      success_url: "#{root_url}payments/success?userId=#{current_user.id}&listingId=#{@listing.id}",
      cancel_url: "#{root_url}listings/#{@listing.id}",
    )

    @session_id = session.id
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

  def favourite
    type = params[:type]
    if type == "favourite"
      current_user.favourites << @listing
      current_user.save
      redirect_back(fallback_location: listings_path)
    elsif type == "unfavourite"
      current_user.favourites.destroy(@listing)
      current_user.save
      redirect_back(fallback_location: listings_path)
    else
      # Type missing, nothing happens
      redirect_back(fallback_location: listings_path)
    end
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

  def set_listing()
    @listing = Listing.find(params[:id])
  end

  def set_user_listing()
    @listing = current_user.listings.find_by_id(params[:id])

    if @listing == nil
      redirect_to listings_path
    end
  end
end
