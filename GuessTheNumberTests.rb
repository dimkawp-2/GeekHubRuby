require_relative 'GuessTheNumber'
class Test
  def assert(expected:,actual:)
    puts expected == actual ? "PASSED" : "FAILED"
  end
  def name_test
    expected_result = { name: 'user' }
    assert(expected: expected_result, actual: GuessTheNumber.new.your_name('user'))
  end
end