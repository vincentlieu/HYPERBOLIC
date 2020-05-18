class PagesController < ApplicationController
  def home()
    @listings = Listing.all
  end

  def about()
  end

  def help()
  end
end
