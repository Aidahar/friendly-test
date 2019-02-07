class Test

  def initialize(quest_path)
    unless File.exists?(quest_path)
      abort "Файл с вопросами не найден."
    end

    file = File.new(quest_path, "r:UTF-8")
    @questions = file.readlines
    file.close

    @score = 0
    @question_number = 0
  end

  def finished?
    return @question_number >= @questions.size
  end

  def ask_questions
    puts "#{@questions[@question_number]}"

    user_input = nil
    until user_input == 1 || user_input == 2 || user_input == 3
      puts "введите число: 1 – да, 2 – нет, 3 – иногда, и нажмите Enter"
      user_input = gets.to_i
    end

    if user_input == 1
      @score += 2
    elsif user_input == 3
      @score += 1
    end
    @question_number +=1
  end

  def score
    return @score
  end
end
