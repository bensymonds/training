class RepeatActivity < ActiveRecord::Base
  validates_inclusion_of :sport, :in => Activity::SPORTS
  validates_presence_of :name, :description
  validates_presence_of :distance, :unless => :duration
  validates_presence_of :duration, :unless => :distance
  has_many :activities
end
