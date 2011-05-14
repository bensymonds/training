class RepeatActivity < ActiveRecord::Base
  validates :sport, :inclusion => {:in => Activity::SPORTS}
  validates :name, :presence => true
  validates :description, :presence => true
  validates :distance, :presence => true, :numericality => {:greater_than => 0}, :unless => :duration
  validates :duration, :presence => true, :numericality => {:only_integer => true, :greater_than => 0}, :unless => :distance
  validate :not_both_duration_and_distance
  has_many :activities
  
  def not_both_duration_and_distance
    self.errors.add(:base, "Can't have both duration and distance") if self.duration && self.distance
  end

end
