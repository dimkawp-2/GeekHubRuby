#This 'RaceTrack Game'
class RaceTrack
  def start
    HorsesImg.new.preview_img
    p "WELCOME TO RACETRACK"
    p "Please tell me your name"
    name = gets.chomp
    first_dialog(name)
    answer = gets.chomp
    case answer
    when "bet"
      bet
    when "info"
      info_block
    else
      p "you answer: #{answer}, need write 'bet' or 'info'"
    end
  end
  def first_dialog(name)
    p "Okay #{name}, you want to bet now ? write 'bet'"
    p "Or if you want looked info about horse. write 'info'"
  end
  def example(name)
    {name: name}
  end
  def info_block
    p "You can choose one of three horses"
    p ''
    p "First Horse name is '#Lucky'"
    p "Ordinary steppe horse"
    p ''
    p "Second Horse name is '#Flash'"
    p "Purebred arabian horse"
    p ''
    p "Third Horse name is '#Speed'"
    p "Purebred riding horse. Fastest racers in the world"
    p ''
    p "If you understand , write 'bet' to bet."
    answer = gets.chomp
    if answer == "bet"
      bet
    else
      info_block
    end
  end
  def bet
    p "Who do you want to bet on ?"
    p "#Lucky 3 : 1"
    p "#Flash 2 : 1"
    p "#Speed 1.5 : 1"
    bet_horse_name = gets.chomp
    case bet_horse_name
    when "Lucky"
      p "Risk rate"
    when "Flash"
      p "Good choice"
    when "Speed"
      p "Great choice"
    else
      bet
    end
      p "Total ?"
      total = gets.chomp
      p "You choosed #{bet_horse_name}. Your Bet #{total}$"
      p "RaceTrack Start!"
    start_track(bet_horse_name,total)
  end
  def start_track(winner_name,total)
    sleep 1
    array = [
        {name: HorsesBD.new.lucky[:name], value: rand(HorsesBD.new.lucky[:speed])},
        {name: HorsesBD.new.flash[:name], value: rand(HorsesBD.new.flash[:speed])},
        {name: HorsesBD.new.speed[:name], value: rand(HorsesBD.new.speed[:speed])}
    ]
    array = array.sort_by { |hsh| hsh[:value] }
    array = array.reverse
    sleep 1.2
    p "After the first round leads #{array[0][:name]}"
    first_horse = array[0][:name]
    sleep 1.4
    p "Behind him comes #{array[1][:name]}"
    sleep 1.6
    p "Last go #{array[2][:name]}"
    sleep 2
    array = [
        {name: HorsesBD.new.lucky[:name], value: rand(HorsesBD.new.lucky[:speed]) +
                                                 rand(HorsesBD.new.lucky[:speed])},
        {name: HorsesBD.new.flash[:name], value: rand(HorsesBD.new.flash[:speed]) +
                                                 rand(HorsesBD.new.lucky[:speed])},
        {name: HorsesBD.new.speed[:name], value: rand(HorsesBD.new.speed[:speed]) +
                                                 rand(HorsesBD.new.lucky[:speed])}
    ]
    array = array.sort_by { |hsh| hsh[:value] }
    array = array.reverse
    sleep 2.2
    if first_horse != array[0][:name]
      p "Leader change. New leader #{array[0][:name]}"
    else
      p "After second round NO change. leads #{array[0][:name]}"
    end
    sleep 2.4
    p "Behind him comes #{array[1][:name]}"
    sleep 2.6
    p "Last go #{array[2][:name]}"
    sleep 3
    god_lucky_boost = HorsesBD.new.god_lucky(HorsesBD.new.lucky[:name])
    if god_lucky_boost > 50
      p "OMG boost Lucky on #{god_lucky_boost} points"
    else
      p "Small boost fore Lucky"
    end
    array = [
        {name: HorsesBD.new.lucky[:name], value: rand(HorsesBD.new.lucky[:speed]) +
                                                 rand(HorsesBD.new.lucky[:speed]) +
                                                 rand(HorsesBD.new.lucky[:speed]) + god_lucky_boost
        },
        {name: HorsesBD.new.flash[:name], value: rand(HorsesBD.new.flash[:speed]) +
                                                 rand(HorsesBD.new.flash[:speed]) +
                                                 rand(HorsesBD.new.flash[:speed])
        },
        {name: HorsesBD.new.speed[:name], value: rand(HorsesBD.new.speed[:speed]) +
                                                 rand(HorsesBD.new.speed[:speed]) +
                                                 rand(HorsesBD.new.speed[:speed])
        }
    ]
    array = array.sort_by { |hsh| hsh[:value] }
    array = array.reverse
    sleep 2.2
    p "First finishing #{array[0][:name]}"
    sleep 2.4
    p "-=2=- #{array[1][:name]}"
    sleep 2.6
    p "-=3=- #{array[2][:name]}"
    sleep 4
    if winner_name == array[0][:name]
      HorsesImg.new.winner_img
      case winner_name
      when 'Lucky'
        p "You win total x3 #{total.to_i * 3}"
      when 'Flash'
        p "You win total x3 #{total.to_i * 2}"
      when 'Speed'
        p "You win total x3 #{total.to_i * 1.5}"
      else
        p "You lose your total #{total}"
      end
    else
      p "You lose your total #{total}"
    end
  end
end

class HorsesBD
  def lucky
    Hash[name: 'Lucky',speed: 150..400]
  end
  def flash
    Hash[name: 'Flash',speed: 150..300]
  end
  def speed
    Hash[name: 'Speed',speed: 250..300]
  end
  def god_lucky(name)
    if name == "Lucky"
      rand(1..100)
    else
      0
    end
  end
end
class HorsesImg
  def preview_img
    p "_____________$______$$______________________________"
    p "_____________$$$____$$$_____________________________"
    p "_____________$$$$$$$$$$$$___________________________"
    p "____________$$$__$$$$$$$$$_$$$$$$___________________"
    p "___________$$$$$$$$$$$$$$$______$$$$$_______________"
    p "__________$$$$$$$$$$$$$$$$$$$$$_____$$$_____________"
    p "_________$$$$____$$$$$$$$$$$$$$$$$____$$$___________"
    p "_________$$$$__$$$$$$$$$$$$$$$$$$$$$____$$__________"
    p "________$$$$$$$$$$$$$$$$$$$$$$$$$$$$$____$$_________"
    p "______$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$____$$$________"
    p "_____$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$____$$________"
    p "___$$$$$$$$$$$$$$$$$$___$$$$$$$$$$$$$$____$$$_______"
    p "___$$$_$$$$$$$$_________$$$$$$$$$$$$$$$____$$_______"
    p "____$$$$$__$$$________$$$$$$$$$$$$$$$$$____$$_______"
    p "______$$__$$$$______$$$$$$$$$$$$$$$$$$$____$$_______"
    p "_________________$$$$$$$$$$$$$$$$$$$$$$____$$_______"
    p "________________$$$$$$$$$$$$$$$$$$$$$$$____$$_______"
    p "_______________$$$$$$$$$$$$$$$$$$$$$$$$____$$_______"
    p "_______________$$$$$$$$$$$$$$$$$$$$$$$$____$$_______"
    p "_______________$______________________$$$$$$$_______"
  end
  def winner_img
    p "___________________________________________________________"
    p "_______________________________________________AIgg________"
    p "__________________________________________gggggggggg_______"
    p "_______________________________________gggggggggggggg______"
    p "____________________________________ggggggggggggggggggg____"
    p "__________ggg____ggggggg__________gggggggggggg_____ggggg___"
    p "_______ggggggggggggggggggggggggggggggggggggggg_____________"
    p "______gggggg__ggggggggggggggggggggggggggggggg______________"
    p "_____gggggg___gggggggggggggggggggggggggggggg_______________"
    p "_____ggggg____ggggggggggggggggggggggggggggg________________"
    p "_____gggg_____Xgggggggggggggggggggggggggggg________________"
    p "____gg_________ggggggggggggggggggggggggggg_________________"
    p "_______________gggggggg_gggggggggggggggggg_________________"
    p "___________gggggggggggg_____________ggggggX________________"
    p "__________hggg____gggg________________ggggg________________"
    p "__________ggR_____ggg___________________gggg_______________"
    p "__________gg_____gggg___________ggg__ggggggggg_____________"
    p "_________ggg______ggg____________gggggg____ggg_____________"
    p "_______gggg_________ggE______________________gg____________"
    p "_______gg____________ggg______________________gg___________"
    p "______________________gggT_____________________ggg_________"
    p "_______________________gggg_____________________ggg________"
    p "___________________________________________________________"
  end
end

class Test
  def assert(expected:,actual:)
    puts expected == actual ? "PASSED" : "FAILED"
  end
  def name
    expected_result = { name: 'name' }
    assert(expected: expected_result, actual: RaceTrack.new.example('name'))
  end
end
#Test.new.name
#RaceTrack.new.start
#This class with MathTasks
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
    #task 41
    def task_41(x:, y:, z:)
      { interval_x: case x when 1..3 then x end,
        interval_y: case y when 1..3 then y end
        interval_z: case z when 1..3 then z end }
    end
    #task 43
    def task_43(x:, y:, z:)
      { interval_x: case x when x > 0 then x** end,
        interval_y: case y when y > 0 then y** end
        interval_z: case z when z > 0 then z** end }
    #task 62
    def task_62(number:)
      { result: number.even? }
    end
end
#task 986 game 'GuessTheNumber'
class GuessTheNumber
  def start
    p "WELCOME to the game 'GuessTheNumber'"
    random_result_value = rand(1..10)
    p "Write your name:"
    name = gets.chomp
    info(name)
    sleep 3
    p "Write first_attempt 1..10"
    first_attempt = gets.chomp
    if first_attempt > random_result_value
      p "first_attempt > random_result_value" 
      second_attempt = gets.chomp
      if second_attempt > random_result_value
        p "second_attempt > random_result_value" 
        third_attempt = gets.chomp
        if third_attempt > random_result_value
          p "third_attempt > random_result_value you lose"
        if third_attempt < random_result_value
          p "third_attempt < random_result_value you lose"
        if third_attempt == random_result_value
          winner(name)
      if second_attempt < random_result_value
        p "second_attempt < random_result_value" 
        third_attempt = gets.chomp
        if third_attempt > random_result_value
          p "third_attempt > random_result_value you lose"
        if third_attempt < random_result_value
          p "third_attempt < random_result_value you lose"
        if third_attempt == random_result_value
          winner(name)
      if second_attempt == random_result_value
        winner(name)
    if first_attempt < random_result_value
      p "first_attempt < random_result_value" 
      second_attempt = gets.chomp
      if second_attempt > random_result_value
        p "second_attempt > random_result_value" 
        third_attempt = gets.chomp
        if third_attempt > random_result_value
          p "third_attempt > random_result_value you lose"
        if third_attempt < random_result_value
          p "third_attempt < random_result_value you lose"
        if third_attempt == random_result_value
          winner(name)
      if second_attempt < random_result_value
        p "second_attempt < random_result_value" 
        third_attempt = gets.chomp
        if third_attempt > random_result_value
          p "third_attempt > random_result_value you lose"
        if third_attempt < random_result_value
          p "third_attempt < random_result_value you lose"
        if third_attempt == random_result_value
          winner(name)
      if second_attempt == random_result_value
        winner(name)
    if first_attempt == random_result_value
      winner(name)
  end
  def info(name)
    p "Ok #{name} The program made a number."
    p "You have 3 attempts to give the correct answer"
  end
  def winner(name)
    p "Your win #{name}"
  end
end
