$all_allergies = {eggs: 1, peanuts: 2, shellfish: 4,
              strawberries: 8, tomatoes: 16, chocolate: 32,
              pollen: 64, cats: 128}             


# accepts an array of allergies and returns a total score according to given allergies
# would return 0 if invalid allergies are given.
def test_by_allergy(allergies)
  score = 0
  allergies.each do |allergy| 
    score += $all_allergies[allergy.to_sym] if $all_allergies.keys.include?(allergy.to_sym)
  end
  score
end

# accepts an integer as score and returns an array of allergies based on given score
# score is sorted in descending order.
def test_by_score(score)
  allergies = Array.new
  $all_allergies.values.reverse.each do |num|
    if num <= score
      score -= num
      allergies << $all_allergies.key(num).to_s
    end
  end
  allergies
end

# returns a boolean if given allergy is true or false according to score.
def is_allergic?(score, item)
  test_by_score(score).include?(item)
end

# prints allergies based on provided score
def print_allergies(score)
  puts "Allergic to:"
  test_by_score(score).each{|allergy| puts "#{allergy}"}
end

# validates user score input. Based on the sum in database, user can only provide numbers from 1 to 255
def score_validation
  while true
    puts "Please provide your score:"
    puts "Please note that values can only be from 1 to 255"
    user_score = gets.chomp.to_i
    if (1..255).include?(user_score)
      return user_score 
    else
      puts "\nInvalid Score Given\n"
    end
  end
end

# validates the user option input. numbers are chosen as method of exploring/using the app.
def answer_validation(name)
  puts "\nHello, #{name}! What would you like to do today?\n
    [1] Check allergy score.
    [2] Check allergies based on score.
    [3] Check if allergic to.
    [4] See allergy score table
    [5] Exit"
  answer_keys = [*1..5]
  ans = gets.chomp.to_i
  while !answer_keys.include?(ans)
    puts "Please navigate through the options using the numbers given."
    ans = gets.chomp.to_i
  end
  ans
end

# main flow of the app.
def main
  puts "What is your name?"
  user = gets.strip
  ans = answer_validation(user)

  running = true
  while running
    case ans
    when 1
      puts "Please list all your allergies. Press \"q\" to exit."
      user_allergies = Array.new
      user_input = gets.strip
      while user_input.downcase[0] != 'q'
        user_allergies << user_input
        user_input = gets.strip
      end
      score = test_by_allergy(user_allergies)
      system("clear")
      puts "\nYour Allergy Score is #{score}\n"

    when 2
      system("clear")
      print_allergies(score_validation)

    when 3
      puts "What do you think you are allergic to?: "
      user_allergy = gets.strip
      system("clear")
      if is_allergic?(score_validation, user_allergy)
        puts "\nYes, You are allergic to #{user_allergy}!"
      else
        puts "\nNo, You are not allergic to #{user_allergy}!"
      end


    when 4
      system("clear")
      $all_allergies.each{|k,v| puts "#{k} has a score of #{v}"}

    else
      return puts "Thank you for using our program! Always be safe!"
    end
    ans = answer_validation
  end
end


main
