i=gets(nil).split"\n"
s=0
i.each{|t|m=[];t.chars.each{|c|c.match?(/[[:digit:]]/) ? m.push(c):0};s+=(m.first+m.last).to_i}
p s