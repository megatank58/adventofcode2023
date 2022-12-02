i=gets(nil).split("\n")
s=0
i.each{|x|n=x.split;s+=(c=n[1].ord-89)==-1 ? (q=n[0].ord - 65)>0 ? q:3:c==0 ? n[0].ord-61:(q=n[0].ord-65)<2 ? q+8:7}
p s
