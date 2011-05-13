class Activity < ActiveRecord::Base
  belongs_to :repeat_activity
  SPORTS = %w( swim_parkside swim_jesus_green cycle run treadmill erg turbo )
  validates :sport, :inclusion => {:in => SPORTS}, :unless => :repeat_activity
  validates :distance, :presence => true, :unless => :repeat_activity
  validates :duration, :presence => true, :unless => :repeat_activity
  validate :correct_repeat_activity_attrs, :if => :repeat_activity
  validates :date, :presence => true

  def correct_repeat_activity_attrs
    if self.repeat_activity.duration
      self.errors.add_on_blank(:distance)
      self.errors.add(:duration, "must be blank") if !duration.blank?
    elsif self.repeat_activity.distance
      self.errors.add_on_blank(:duration)
      self.errors.add(:distance, "must be blank") if !distance.blank?
    end

    self.errors.add(:sport, "must be blank") if !sport.blank?
  end

end
