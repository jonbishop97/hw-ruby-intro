# When done, submit this entire file to the autograder.

# Part 

def sum arr
  _sum = 0
  arr.each do |number| _sum += number end
  return _sum
end

def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    _largest = -999999
    _second_largest = -999999
    arr.each do |number|
      if number >= _largest
        _second_largest = _largest
        _largest = number
      elsif number >= _second_largest
        _second_largest = number
      end
    end
    return _largest + _second_largest
  end
end

def sum_to_n? arr, n
  if arr.length <= 1
    return false
  else
    for i in (0...arr.length) do 
      for j in (0...arr.length) do
        if i == j
          next
        else
          if arr[i] + arr[j] == n
            return true
          else
            next
          end
        end
      end
    end
  end
  
  return false
end

# Part 2

def hello(name)
  s = String.new("Hello, ")
  return s << name
end

def starts_with_consonant? s
  return !s.empty? && s.downcase[0] =~ /[a-z]/i && !s.downcase.start_with?("a", "e", "i", "o", "u")
end

def binary_multiple_of_4? s
  return s == "0" || s =~ /\A[0,1]*00\z/
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(i, p)
    raise ArgumentError, "Invalid arguments"  unless !i.empty? && p > 0.00
    @isbn, @price = i, p
  end
  
end
