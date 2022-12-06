class PagesController < ApplicationController
 skip_before_action :authenticate_user!, only: :home
  def uikit
  end

  def home
  end

  def index
    @activities = Activity.all
  end

  def game
    @activities = Activity.first(10)
  end
end
