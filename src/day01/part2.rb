input = gets(nil).split("\n\n")
biggest = [0,0,0]

input.each { |x| (n=x.split("\n").map { |y| y.to_i }.sum) > biggest.min ? biggest[biggest.find_index(biggest.min)] = n : n=0 }

p biggest.sum