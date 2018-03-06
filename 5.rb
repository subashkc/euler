require 'prime'

start = 20
prime_factorials = []

class Array
  
  # https://stackoverflow.com/questions/30429659/ruby-difference-in-array-including-duplicates
  def difference(other)
    cpy = dup
    other.each do |e|
      ndx = cpy.rindex(e)
      cpy.delete_at(ndx) if ndx
    end
    cpy
  end
  
  def extract_and_add_prime_factorials num
    factors_list = []
    Prime.prime_division(num).each do |factorials|
      factorials[1].times { factors_list << factorials[0] }
    end
    self << factors_list.difference(self)
    self.flatten!
    factors_list.clear
  end
  
  
end

(2..20).each do |val|
  prime_factorials.extract_and_add_prime_factorials(val)
end

puts prime_factorials.inject(&:*)


# This is too good to skip
# require 'rational'
# num = (1..20).inject(1) { |result, n| result.lcm n }
