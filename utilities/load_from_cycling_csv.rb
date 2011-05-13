require File.dirname(__FILE__) + '/../config/boot'

DATE = 0
NAME = 1
DURATION = 2
DISTANCE = 3

NAME_MAP = {
  'CYCLE_TURBO' => 'turbo',
  'CYCLE_WORK' => 'cycle',
  'CYCLE_HOME' => 'cycle',
  'SWIM_JESUS_GREEN' => 'swim_jesus_green',
  'SWIM_PARKSIDE' => 'swim_parkside',
  'ERG' => 'erg',
  'RUN_GYM' => 'treadmill'
}

# SWIM_HOME(_2) - split into RA of 2km and A of rest
data = CSV.read 'cycling_mbp.csv'

data.each do |row|
  if (ra = RepeatActivity.by_name(row[NAME]))
    Activity.create! :repeat
  elsif NAME_MAP[row[NAME]] # non-repeat activity
  else
    raise
  end
end
