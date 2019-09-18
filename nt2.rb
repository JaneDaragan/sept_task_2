=begin
Задача 2
Написать метод remove_duplicates, который принимает два аргумента:
два массива с числами. Метод должен удалить все числа из второго массива, которые содержатся в первом массиве.
Пример:
values_list = [2,3,5]
numbers_list = [2,2,3,1,6,4,1,5]
remove_duplicates(values_list, numbers_list) -> возвращает [1,6,4,1]
=end

def remove_duplicates(values_list, numbers_list)
  new_list = numbers_list - values_list
end
