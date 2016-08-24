class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home]

  def index
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
