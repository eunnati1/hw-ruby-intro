# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  
  arr.inject(0){|sum, array_values| sum + array_values }
end

def max_2_sum arr
   arr.sort.last(2).reduce(0){|sum , x| sum + x }
  #arr.sort.inject(0){|sum, a ,b| sum + a + b}

end

def sum_to_n? arr, n
   #!!arr.find{|i| arr.include?(n-i)}
   arr.combination(2).any?{|a,b| a+b==n}

end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  puts s
 # s.start_with?{|s| s =~ /[^AEIOUaeiou]/}
  #if s.match(/[^aeiou#]/) 
   #  return true
  #end
  
 if s.capitalize.match(/^\A+[AEIOU!@#$%^&*~]/) || s == ""
     return false
 else 
     return true
 end
  
end

def binary_multiple_of_4? s
    
    if s =~ /^[01]*$/ && s != ""
      str = s.to_i
       if str % 4 == 0 
           return true
       else 
           return false
      end
  end
end

# Part 3


class BookInStock


def initialize(isbn, price)
    if (isbn.is_a?(String) && isbn != "" && price > 0)
         @isbn = isbn
           @price = price
    else
         raise ArgumentError.new("Empty string is not allowed")
         
    end
  end

#number_to_currency("123a456")

def isbn #getter method
    @isbn
  end

  def isbn=(isbn) #setter method
    @isbn = isbn
  end
  
  def price #getter method
    @price
  end

  def price=(price) #setter method
    @price = price
  end

def price_as_string
    #include ActionView::Helpers::NumberHelper
   #puts number_to_currency(price, precision: 2)
    #return number_to_currency(price, precision: 2)
    puts "$" + price.to_s + '%.2f'
    return "$" + '%.2f' % price.to_s
    
end

 
end


