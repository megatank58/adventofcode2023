i=gets.chars
s=[]
k=0
loop{s.push(i[k]);k+=1;s.uniq.size==s.size&&s.size>3 ? break : (s.size>3 ? s.shift : '')}
p k