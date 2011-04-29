module RepeatActivitiesHelper

  def distance_or_duration repeat_activity
    repeat_activity.distance.blank? ? "#{repeat_activity.duration} seconds" : "#{repeat_activity.distance} km"
  end

end
