class RepeatActivity < ActiveRecord::Base
  SPORTS = %w( swim cycle run row )
  validates_inclusion_of :sport, :in => SPORTS
  validates_presence_of :distance, :name, :description
end
