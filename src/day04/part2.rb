i=gets(nil).split
s=0
i.map{|x|n=x.split(',');y,z=n.map{|a|n=a.split('-');a=*(n[0].to_i..n[1].to_i)};s+=(y&z).size>0 ? 1:0}
p s