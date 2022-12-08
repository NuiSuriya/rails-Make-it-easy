class LikesController < ApplicationController

  def create
    @user = current_user
    @activity = Activity.find(params[:activity_id])
    @like = Like.new
    @like.user = @user
    @like.activity = @activity
    @like.save
    # redirect_to activities_path if @like.save
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    # redirect_to activities_path
  end
end
