class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home, :index]

  def index
    render layout: "layouts/index"
  end

  def home
  end

  def account
  end

  def tips
  end

  def reachout
  end

  def privacy
  end

end
