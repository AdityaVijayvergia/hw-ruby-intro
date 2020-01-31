# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  tot = 0
  arr.each{|a| tot+=a}
  return tot
end

def max_2_sum arr
  # YOUR CODE HERE
  len = arr.length
  
  if len==0
    return 0
  end
  
  if len==1
    return arr[0]
  end
  
  max1=arr[0]
  max2=arr[1]
  
  if max1<max2
    max1=arr[1]
    max2=arr[0]
  end
  
  arr[2..-1].each do |a|
    if a>max1
      max2=max1
      max1=a
    elsif max2<a
      max2=a
    end
  end
  # puts max1,max2
  return max1 + max2
end


def sum_to_n? arr, n
  # YOUR CODE HERE
  ar = arr.sort
  first = 0
  last = ar.length - 1
  
  while first<last
    val = ar[first]+ar[last]
    if val == n
      return true
    elsif val>n
      last-=1
    else
      first+=1
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end


def starts_with_consonant? s
  if s.length == 0
    return false
  end
  s = s.upcase
  vowels = "QWRTYPSDFGHJKLZXCVBNM"
  if vowels.index(s[0])!=nil
    return true
  end
  return false
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s.chars.each do |no|
    if "01".index(no) == nil
      return false
    end
  end
  if s=='0'
    return true
  end
  if s.length<=2
    return false
  end
  if s[-1]=='0' and s[-2]=='0'
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.length==0 or price<=0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end

  def price
    @price
  end

  def isbn=(isbn) 
    @isbn = isbn 
  end
  
  def price=(price) 
    @price = price 
  end
  
  def price_as_string
    return "$"+sprintf("%.2f", @price)
  end

end

# puts max_2_sum [3,4,2,5,9,8,7,9]
# puts starts_with_consonant? ""
