class Stack
  def initialize
    @storage = Array.new
  end

  def push(el)
    @storage.push(el)
  end

  def pop
    @storage.pop
  end

  def peek
    @storage[0]
  end
end

class Queue

  def initialize
    @storage = Array.new
  end

  def enqueue(el)
    @storage.unshift(el)
  end

  def dequeue
    @storage.shift
  end

  def peek
    @storage[0]
  end
end

class Map

  def initialize
    @storage = Array.new(0)
  end

  def set(key, value)
    if @storage.empty?
      @storage << [key, value]
    elsif @storage.all? { |e| e[0] != key }
      @storage << [key,value]
    else
      @storage.each {|el| el[1] = value if el[0] == key }
    end
  end

  def get(key)
    @storage.each do |el|
      if el[0] == key
        el
      end
    end
  end

  def delete(key)
    @storage.each do |el|
      if el[0] == key
        @storage.delete(el)
      end
    end
  end

  def show
    @storage
  end
end
