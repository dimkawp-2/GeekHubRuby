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
