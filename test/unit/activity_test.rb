require 'test_helper'

class ActivityTest < ActiveSupport::TestCase

  test "basic validations" do
    a = Activity.new
    assert !a.valid?
    assert_equal [:date, :distance, :duration, :sport], a.errors.keys.sort
    
    a = Activity.new :date => Date.today, :sport => 'run', :distance => 10, :duration => 30.minutes
    assert a.valid?
  end

  test "validations with repeat_activity" do
    a = Activity.new :date => Date.today, :repeat_activity => repeat_activities(:run)
    assert !a.valid?
    assert_equal [:duration], a.errors.keys

    a = Activity.new :date => Date.today, :repeat_activity => repeat_activities(:erg)
    assert !a.valid?
    assert_equal [:distance], a.errors.keys

    a = Activity.new :date => Date.today, :repeat_activity => repeat_activities(:run), :distance => 10
    assert !a.valid?
    assert_equal [:distance, :duration], a.errors.keys.sort

    a = Activity.new :date => Date.today, :repeat_activity => repeat_activities(:erg), :duration => 30.minutes
    assert !a.valid?
    assert_equal [:distance, :duration], a.errors.keys.sort

    a = Activity.new :date => Date.today, :repeat_activity => repeat_activities(:run), :duration => 30.minutes
    assert a.valid?

    a = Activity.new :date => Date.today, :repeat_activity => repeat_activities(:erg), :distance => 10
    assert a.valid?

    a = Activity.new :date => Date.today, :repeat_activity => repeat_activities(:erg), :distance => 10, :sport => 'run'
    assert !a.valid?
    assert_equal [:sport], a.errors.keys
  end

end
