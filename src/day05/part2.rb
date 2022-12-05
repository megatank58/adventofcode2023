i=gets(nil).split("\n\n")
b=i[0].split("\n")
m=i[1].split("\n")
r=b.pop.split.last.to_i
a=b.map{|c| c.split(/\[?\]?/)}
f=[]
s=""
c=0
a=a.map{|d| d.map{|e| if e==" " then c+=1; if c==3 then c=-1; "[0]" else nil end else c=0; e end}.map{|e|e=="" ? nil : e}.compact}
r.times{|i|f[i]=a.map{|r|r[i]}}
f=f.map{|k| k.map{|e|e=="[0]" ? nil:e}.compact}
m.each{|k| k=k.split; j=f[k[3].to_i-1][..k[1].to_i-1]; j.reverse.map{|e|f[k[5].to_i-1].prepend(e)}; j.size.times{f[k[3].to_i-1].shift}}
f.each{|k| s+=k[0]}
p s