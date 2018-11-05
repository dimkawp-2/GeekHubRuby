require_relative 'MathTasks'
class Test
  def assert(expected:, actual:)
    puts expected == actual ? "PASSED" : "FAILED"
  end
  def task_01_test
    expected_result = { summ: 3, diff: 1, comp: 2}
    assert(expected: expected_result, actual:  MathTasks.new.task_01(x: 2, y: 1))
  end
  def task_02_test
    expected_result = {result: 0.0}
    assert(expected: expected_result, actual: MathTasks.new.task_02(x: 1, y: 1))
  end
  def task_03_test
    expected_result = {size: 1000,square: 100}
    assert(expected: expected_result, actual: MathTasks.new.task_03(range: 10))
  end
  def task_04_test
    expected_result = {average_arithmetic_value: 1,average_geometric_value: 1.0}
    assert(expected: expected_result, actual: MathTasks.new.task_04(x: 1,y: 1))
  end
  def task_05_test
    expected_result = {average_arithmetic_value: 1,average_geometric_value: 1.0}
    assert(expected: expected_result, actual: MathTasks.new.task_05(x: 1,y: 1))
  end
  def task_06_test
    expected_result = {hypotenuse: 12.0,square: 0}
    assert(expected: expected_result, actual: MathTasks.new.task_06(leg_x: 0,leg_y: 12))
  end
  def task_10_test
    expected_result = {time: 12}
    assert(expected: expected_result, actual: MathTasks.new.task_10(mass: 10,height: 120))
  end
  def task_12_test
    expected_result = {square: 3}
    assert(expected: expected_result, actual: MathTasks.new.task_12(length: 10))
  end
  def task_13_test
    expected_result = {result: 2}
    assert(expected: expected_result, actual: MathTasks.new.task_13(length: 10))
  end
  def task_16_test
    expected_result = {result: 10}
    assert(expected: expected_result, actual: MathTasks.new.task_16(length: 10))
  end
  def task_17_test
    expected_result = {result: 12}
    assert(expected: expected_result, actual: MathTasks.new.task_17(radius: 10))
  end
  def task_24_test
    expected_result = {result: 3}
    assert(expected: expected_result, actual: MathTasks.new.task_24(x_1: 1, x_2: 2, y_1: 2, y_2: 3))
  end
  def task_33_test
    expected_result = {result: 2}
    assert(expected: expected_result, actual: MathTasks.new.task_33(x: 2, y: 2))
  end
  def task_38_test
    expected_result = {result: 2}
    assert(expected: expected_result, actual: MathTasks.new.task_38(x: 2, y: 3))
  end
  def task_39_test
    expected_result = {result: [2,3]}
    assert(expected: expected_result, actual: MathTasks.new.task_39(x: 2, y: 3))
  end
  def task_40_test
    expected_result = {result: 0}
    assert(expected: expected_result, actual: MathTasks.new.task_40(x: 2, y: 3))
  end
end
