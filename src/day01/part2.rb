i=gets(nil).split("\n\n")
s=[0,0,0]
i.each{|x|(n=x.split("\n").map{|y| y.to_i}.sum)>s.min ? s[s.find_index(s.min)]=n:n=0}
p s.sum