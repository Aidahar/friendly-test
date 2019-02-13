class ResultPrinter
  def initialize(result_path)
    unless File.exist?(result_path)
      puts "Файл не найден"
    end
    @answer = IO.readlines(result_path, sep=$/)
  end

  def result_print(test)
    puts "\n\nРезультат теста (всего баллов - #{test.score}):"

    case test.score
    when test.score >= 30 then puts @answer[0]
    when test.score >= 25 then puts @answer[1]
    when test.score >= 19 then puts @answer[2]
    when test.score >= 14 then puts @answer[3]
    when test.score >= 9  then puts @answer[4]
    when test.score >= 4  then puts @answer[5]
    else
      puts @answer[6]
    end
  end
end
