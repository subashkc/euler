require 'prime'
a=1
b=2
c=600851475143
is_prime = false
while b < (c/2)
a=c%b
is_prime = Prime.prime?(c/b) if a == 0
break if a==0 && is_prime
b=b+1
end
puts c/b
