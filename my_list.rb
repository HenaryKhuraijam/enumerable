require_relative 'enumerable'

class MyList
  include Enumerable
  def initialize(*list)
    @list = list
  end

  def each()
    counter = 0
    while counter < @list.length
      yield(@list[counter])
      counter += 1
    end
    @list
  end
end

list = MyList.new(1, 2, 3, 4)

p(list.all? { |element| element > 5 })

p(list.all? { |element| element < 5 })

p(list.any? { |element| element > 2 })

p(list.any? { |element| element < 1 })

p(list.filter? { |element| element > 2 })

p(list.filter? { |element| element < 5 })
