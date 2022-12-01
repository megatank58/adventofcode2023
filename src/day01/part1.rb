input = gets(nil).split("\n\n")
biggest = 0

input.each { |x| (n=x.split("\n").map { |y| y.to_i }.sum) > biggest ? biggest = n : n=0 }

p biggest