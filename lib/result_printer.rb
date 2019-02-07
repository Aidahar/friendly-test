class ResultPrinter
  def initialize(result_path)
    if File.exist?(result_path)
      file = File.new(result_path, 'r:UTF-8')
      @answer = file.readlines
      file.close
    else
      puts "Файл не найден"
    end
  end

  def result_print(test)
    puts
    puts
    puts "Результат теста (всего баллов - #{test.score}):"

    if test.score >= 30
      puts @answer[0]
    elsif test.score >= 25
      puts @answer[1]
    elsif test.score >= 19
      puts @answer[2]
    elsif test.score >= 14
      puts @answer[3]
    elsif test.score >= 9
      puts @answer[4]
    elsif test.score >= 4
      puts @answer[5]
    else
      puts @answer[6]
    end
  end
end
