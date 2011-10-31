class HomeController < ApplicationController
  def index
    @title = "Home"
  end

  def about
    @title = "About us"
  end

  def contact
    @title = "Contact us"
  end

  def privacy
    @title = "Privacy Agreement"
  end

  def terms
    @title = "Terms of Use"
  end

  def team
    @title = "Our Team"
  end

end
