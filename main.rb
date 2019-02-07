require_relative 'test'
require_relative 'result_printer'

puts "Пройдите тест на дружелюбие."
current_path = __dir__
quest_path = current_path + "/data/questions.txt"
result_path = current_path + "/data/result.txt"

test = Test.new(quest_path)
result = ResultPrinter.new(result_path)

until test.finished?
  test.ask_questions
end

result.result_print(test)
