a=1
b=2
c=0
while a <= 4000000
c=c+b if b%2==0
temp=b
b=b+a
a=temp
end

puts c
