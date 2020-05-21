class PagesController < ApplicationController
  def home()
    #Only show the latest listings that have not been purchased.
    @listings = Listing.where(purchased: false).last(4)
  end

  def favourites()
    @favourites = current_user.favourites
  end

  def about()
  end

  def help()
  end
end
