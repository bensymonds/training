class RepeatActivity < ActiveRecord::Base
  validates_inclusion_of :sport, :in => Activity::SPORTS
  validates_presence_of :distance, :name, :description
  has_many :activities
end
