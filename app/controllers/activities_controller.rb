class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      @activities = Activity.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @activities = Activity.all
    end
  end
end
