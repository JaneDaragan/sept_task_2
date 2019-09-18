
=begin
Написать метод descend_numbers, который принимает неотрицательное число и возвращает цифры этого числа в убывающем порядке.
Пример:

descend_numbers(483559) -> 985543
descend_numbers(80144125) -> 85442110
=end

def descend_numbers(numbers)
   numbers.to_s.split('').sort.reverse.join
end
