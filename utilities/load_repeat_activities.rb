require File.dirname(__FILE__) + '/../config/boot'
require 'csv'

NAME = 0
SPORT = 1
DISTANCE = 2
DURATION = 3
DESCRIPTION = 4

data = CSV.read 'ras.csv';nil
data.shift

data.each do |row|
  attrs = {:name => row[NAME], :sport => row[SPORT], :description => row[DESCRIPTION]}
  if row[DISTANCE].blank?
    attrs[:duration] = row[DURATION]
  else
    attrs[:distance] = row[DISTANCE]
  end

  RepeatActivity.create! attrs
end
