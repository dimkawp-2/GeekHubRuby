require_relative 'RaceTrackGame'
class Test
  def assert(expected:,actual:)
    puts expected == actual ? "PASSED" : "FAILED"
  end
  def name_test
    expected_result = { name: 'name' }
    assert(expected: expected_result, actual: RaceTrack.new.your_name('name'))
  end
  def bet_test
    expected_result = { horse_name: 'Lucky' }
    assert(expected: expected_result, actual: RaceTrack.new.bet_horse_name('Lucky'))
  end
end