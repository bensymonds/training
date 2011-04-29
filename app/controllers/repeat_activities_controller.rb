class RepeatActivitiesController < ApplicationController

  def index
    @repeat_activities = RepeatActivity.all
  end

  def show
    @repeat_activity = RepeatActivity.find(params[:id])
  end

end
