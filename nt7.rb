=begin
Задача 7
Написать метод list_items, который принимает массив элементов и в качестве результата выдает нумерованный список с элементами массива.
Пример:

words = ['words', 'to', 'be', 'listed']
list_items(words) ->
# метод должен вернуть результат в таком виде:
1. words
2. to
3. be
4. listed
Если в метод передать массив чисел, то числа должны преобразоваться в строки и результат должен быть аналогичным.
=end

def list_items(arr)
  arr.each {|words| words.to_s if words.class == Integer}
  arr.each_with_index do |words,index|
    puts "#{(index+1)}.  #{words}"
  end
end
