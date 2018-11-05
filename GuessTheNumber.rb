#task 986 game 'GuessTheNumber'
class GuessTheNumber
  def start
    p "WELCOME to the game 'GuessTheNumber'"
    random_result_value = rand(1..10)
    p "Write your name:"
    name = gets.chomp
    info(name)

    p "Write first_attempt 1..10"
    first_attempt = gets.chomp
    
    case first_attempt.to_i
    when random_result_value
      winner(name)
    else
      if first_attempt.to_i > random_result_value
        p 'attempt > random_result_value'
        second_attempt = gets.chomp
        case second_attempt.to_i
        when random_result_value
          winner(name)
        else
          if first_attempt.to_i > random_result_value
            p 'attempt > random_result_value'
            third_attempt = gets.chomp
            case third_attempt.to_i
            when random_result_value
              winner(name)
            else
              p 'lose'
            end
          else
            p 'attempt < random_result_value'
            third_attempt = gets.chomp
            case third_attempt.to_i
            when random_result_value
              winner(name)
            else
              p 'lose'
            end
          end
        end
      else
        p 'attempt < random_result_value'
        second_attempt = gets.chomp
        case second_attempt.to_i
        when random_result_value
          winner(name)
        else
          if first_attempt.to_i > random_result_value
            p 'attempt > random_result_value'
            third_attempt = gets.chomp
            case third_attempt.to_i
            when random_result_value
              winner(name)
            else
              p 'lose'
            end
          else
            p 'attempt < random_result_value'
            third_attempt = gets.chomp
            case third_attempt.to_i
            when random_result_value
              winner(name)
            else
              p 'lose'
            end
          end
        end
      end
    end
    p "random_result_value #{random_result_value}"
  end
  def your_name(name)
    { name: name }
  end
  def info(name)
    p "Ok #{name} The program made a number."
    p "You have 3 attempts to give the correct answer"
  end
  def winner(name)
    p "Your win #{name}"
  end
end

GuessTheNumber.new.start
