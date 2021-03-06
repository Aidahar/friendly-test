class Test
  attr_reader :score

  def initialize(quest_path)
    unless File.exists?(quest_path)
      abort "Файл с вопросами не найден."
    end

    @questions = IO.readlines(quest_path, sep=$/)
    @score = 0
    @question_number = 0
    @number = 1
  end

  def finished?
    return @question_number >= @questions.size
  end

  def ask_questions
    puts "#{@number}. #{@questions[@question_number]}"

    user_input = nil
    until user_input == 1 || user_input == 2 || user_input == 3
      puts "введите число: 1 – да, 2 – нет, 3 – иногда, и нажмите Enter"
      user_input = gets.to_i
    end

    @score += 2 if user_input == 1
    @score += 1 if user_input == 3
    @question_number +=1
    @number +=1
  end
end
