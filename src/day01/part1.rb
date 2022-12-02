i=gets(nil).split("\n\n")
s=0
i.each{|x|(n=x.split("\n").map{|y|y.to_i }.sum)>s ? s=n:n=0}
p s