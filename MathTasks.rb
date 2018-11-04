class MathTasks
    def task_01(x:,y:)
      { summ: x + y,
        diff: x - y,
        comp: x * y }
    end
      #task 2
      def task_02(x:, y:)
        { result: (x.abs - y.abs) / (1 + (x * y).abs).to_f }
      end
      #task 3
      def task_03(range:)
        { size: range**3,
          square: range**2 }
      end
      #task 4
      def task_04(x:, y:)
        { average_arithmetic_value: (x + y) / 2,
          average_geometric_value: Math.sqrt(x * y) }
      end
      #task 5
      def task_05(x:, y:)
        { average_arithmetic_value: (x + y) / 2,
          average_geometric_value: Math.sqrt(x.abs * y.abs) }
      end
       #task 6
      def task_06(leg_x:, leg_y:)
        { hypotenuse: Math.sqrt(leg_x**2 + leg_y**2),
          square: (leg_x * leg_y) / 2 }
      end
      #task 10
      def task_10(mass:, height:)
        { time: Math.sqrt((2*height)/mass) }
      end
       #task 12
      def task_12(length:)
        {square: (Math.sqrt(3) / 4 * length**2).round(3) }
      end
      #task 13
      def task_13(length:)
        { result: 2*Math::PI*Math.sqrt(length/9) }
      end
      #task 16
      def task_16(length:)
        { result: ((length / 2 / Math::PI)**2 * Math::PI).round(3) }
      end
      #task 17
      def task_17(radius:)
        { result: radius > 20 ? (radius**2 * Math::PI - 20**2 * Math::PI).round(3) : false }
      end
      #task 24
      def task_24(x_1:, x_2:, y_1:, y_2:)
        { result: Math.sqrt((x_2 - x_1)**2 + (y_2 - y_1)**2) }
      end
      #task 33
      def task_33(x:, y:)
        { result: [x, y].min }
      end
       #task 38
      def task_38(x:, y:)
        { result: x > y ? x - y : y - x + 1 }
      end
      #task 39
      def task_39(x:, y:)
        { reuslt: x > y ? x : [x, y] }
      end
      #task 40
      def task_40(x:, y:)
        result = x = 0 if x <= y
        { result: result }
      end
      task 41
      def task_41(x:, y:, z:)
        { interval_x: case x when 1..3 then x end,
          interval_y: case y when 1..3 then y end,
          interval_z: case z when 1..3 then z end }
      end
      #task 43
      def task_43(x:, y:, z:)
        { interval_x: case x when x > 0 then x** end,
          interval_y: case y when y > 0 then y** end,
          interval_z: case z when z > 0 then z** end }
      task 62
      def task_62(number:)
        { result: number.even? }
      end
  end