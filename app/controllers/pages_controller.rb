class PagesController < ApplicationController
  def home
  	@pages = HarshaBlog.all
  end

  def about
  end

  def contact
  end
end
