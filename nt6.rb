=begin
Задача 6

Написать класс Word, который, при создании экземпляра класса принимает строку, содержащую какое-то слово.
В этом классе написать метод ordered_count, который вернет массив со вложенными массивами,
в каждом из которых первый элемент - каждая буква слова, второй элемент - количество раз, которое эта буква встречается в этом слове.
Класс также должен иметь инстанс-метод, возвращающий переданную при создании экземпляра строку.

Пример:
word = Word.new('abracadabra')
word.ordered_count -> [['a', 5], ['b', 2], ['r', 2], ['c', 1], ['d', 1]]
word.initial_word -> 'abracadabra'
=end

class Word
  def initialize(string)
   @string = string
  end

  def ordered_count
    word = @string.split(//)
    array = word.map{|str| [str, word.count(str)]}
  end

  def initial_word
   @string
  end
end
