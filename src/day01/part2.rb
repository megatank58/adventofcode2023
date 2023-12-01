def word_to_number(t)
w={"one"=>1,"two"=>2,"three"=>3,"four"=>4,"five"=>5,"six"=>6,"seven"=>7,"eight"=>8,"nine"=>9}
r="";z="";t.chars.each{|c|r+=c;w.has_value?(r.to_i) ? (z+=r;r=""):w[r]!=nil ? (z+=w[r].to_s;r=r.split("").last):0};r[0]='';r!='' ? z+=word_to_number(r):0;return z
end
i=gets(nil).split"\n"
s=0
i.each{|t|m=word_to_number(t).split("");s+=(m.first+m.last).to_i}
p s