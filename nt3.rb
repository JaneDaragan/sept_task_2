=begin
Задача 3
Написать класс Block, который представляет собой некую геометрическую объемную фигуру.
Каждый экземпляр этого класса должен иметь 3 атрибута: длину (length), ширину (width), и высоту (height).
Соответственно, значения этих атрибутов нужно указывать при каждом создании новой фигуры, то есть при каждом создании нового экземпляра этого класса. Класс должен иметь следующие инстанс-методы (вызываемые на объекте класса, то есть на каждой фигуре):
    width, возвращает ширину фигуры
    length, возвращает длину фигуры
    height, возвращает высоту фигуры
    volume, возвращает объем фигуры
    surface_area, возвращает сумму площадей всех сторон фигуры (можно считать, что каждая сторона фигуры - прямоугольник)
Примеры:
block = Block.new([2,4,6]) -> создается объект класса Block, у которого длина равна - 2, ширина - 4, высота - 6
block.length -> возвращает 2
block.width -> возвращает 4
block.height -> возвращает 6
block.volume -> возвращает 48 (можно считать по формуле v = длина * ширину * высоту)
block.surface_area -> возвращает 88
=end

class Block
 def initialize (length, width, height)
  @length = length
  @width = width
  @height = height
 end

 def volume
  @volume = @length*@width*@height
 end

 def surface_area
  @surface_area = (@height*@lenght)*2 + (@height*@width)*2 + (@length*@width)*2 # не могу понять почему TypeError (nil can't be coerced into Integer)
 end

 def length
  @length
 end

 def width
  @width
 end

 def height
  @height
 end
end
