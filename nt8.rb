=begin
Задача 8
Написать два класса: Cart и Item. Каждый экземпляр класса Cart представляет собой некую корзину,
к которую должны помещаться товары (экземпляры класса Item).

У класса Cart реализовать следующие инстанс-методы:
    put_item, принимает один аргумент (экземпляр класса Item), и складывает товар "в корзину" (помещает в массив).
    take_item, принимает один аргумент (тоже экземпляр класса Item), и берет "из корзины" нужный товар (возвращает в качестве результата, при этом товар из массива корзины удаляется).
    items, выводит пронумерованный список всех типов (атрибут type) товаров в корзине (в таком же виде, как в задаче №7).
    items_price, выводит сумму всех товаров в корзине.

Каждый экземпляр класса Item имеет следующие атрибуты:
type (тип товара, может быть любым), price (цена товара).
У класса Item реализовать следующие инстанс-методы:
    type, возвращает тип товара.
    price, возвращает цену товара.
Также должна быть возможность устанавливать значение для этих атрибутов в таком виде:
item = Item.new('apple', 40)
item.type -> 'apple'
item.price -> 40
# и возможность задавать значения атрибутов у созданного объекта таким образом:
item.type = 'potato'
item.price = 10
=end

class Cart
 def initialize
  @cart = []
 end

 def put_item(item)
  @cart << item
 end

 def take_item(item)
  @cart.delete(item)
 end

 def items
   @cart.each_with_index do |item, index|
   puts "#{(index+1)}. #{item.type}"
   end
 end

 def items_price
   @cart.collect {|item| item.price}.sum
 end
end

class Item
  attr_writer :price, :type

  def initialize(type,price)
   @type = type
   @price = price
  end

  def type
   @type
  end

  def price
   @price
  end
end
