i=gets(nil).split
s=0
i.each{|x|n=x.chars.each_slice(x.size/2).map(&:join);c=n[0].chars&n[1].chars;s+=(z=c[0].ord)<97 ? z-38:z-96}
p s