class Activity < ActiveRecord::Base
  belongs_to :repeat_activity
  SPORTS = %w( swim cycle run treadmill erg turbo )
  validates_inclusion_of :sport, :in => SPORTS, :unless => :repeat_activity
  validates_presence_of :distance, :unless => :repeat_activity
  validates_presence_of :date
end
