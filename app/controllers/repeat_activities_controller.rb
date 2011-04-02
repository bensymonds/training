class RepeatActivitiesController < ApplicationController

  def index
    @repeat_activities = RepeatActivity.all
  end

end
