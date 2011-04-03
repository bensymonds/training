class Event < ActiveRecord::Base
  validates :date, :presence => true
  validates :description, :presence => true
end
