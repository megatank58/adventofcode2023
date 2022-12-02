i=gets(nil).split("\n")
s=0
i.each{|x|n=x.split;s+=(r=n[1].ord-(n[0].ord+24))==0||r==-3 ? n[1].ord-81:r==-1 ? n[1].ord-84:n[1].ord-87}
p s