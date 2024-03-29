=begin
Задача 1
Написать метод count_chars, который принимает один аргумент - массив строк (каждая строка - какое-то слово).
Метод должен сформировать и вернуть в качестве результата хэш, в котором ключами будут являться слова из массива, а их значениями - количество символов в этих словах.
Пример:
words = ['ruby', 'is', 'awesome']
count_chars(words) -> { 'ruby' => 4, 'is' => 2, 'awesome' => 7 }
=end

def count_chars(words)
  h = {}
  words.each {|v| h.store(v, h[v]+ v.size)}
  p h
end

words = ['ruby', 'is', 'awesome']
