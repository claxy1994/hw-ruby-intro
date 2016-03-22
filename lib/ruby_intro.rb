# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return 0 if arr.length==0
  arr_1_sum = 0
  arr.each do |i|
    arr_1_sum += i
  end
  arr_1_sum
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.length==0
  return arr[0] if arr.length==1
  arr_sort = arr.sort
  arr_sort[arr_sort.length-1]+arr_sort[arr_sort.length-2]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.length==0
  return false if arr.length==1
  arr.each do |i|
    arr_copy = arr.compact
    arr_copy.delete(i)
    return true if arr_copy.include?(n-i)
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return false if s == ''
  return false if s =~ /^[^a-zA-Z](.*)/
  return false if s =~ /^[aeiouAEIOU](.*)/
  true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if s == ''
  if s =~ /^[01]*$/
    if s.to_i(2)%"100".to_i(2)==0
      return true
    end
    return false
  end
  false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  @isbn = nil
  @price = 0
  
  def initialize isbn,price
    if isbn.empty? || price <=0
      raise ArgumentError
    end
    @isbn,@price = isbn,price
  end
  
  attr_reader :isbn, :price
  
  def isbn= isbn
    raise ArgumentError if isbn.empty?
    @isbn = isbn
  end
  
  def price= price
    raise ArgumentError if price<=0
    @price = price
  end
  
  def price_as_string
    "$"+format("%0.2f",price)
  end
  
end
