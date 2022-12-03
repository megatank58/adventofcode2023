i=gets(nil).split
s,k=0,0
q=[]
loop{q[k]=[i[k].chars,i[k+1].chars,i[k+2].chars];(k+=3)>=i.size ? break : ""}
q=q.compact
q.each{|r|c=r[0]&r[1]&r[2];s+=(z=c[0].ord)<97 ? z-38:z-96}
p s