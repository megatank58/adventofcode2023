i=gets(nil).split"\n"
s=0
i.each{|t|b={"red"=>0,"green"=>0,"blue"=>0};d=t.split()[1].chop();t.split(":")[1].split(";").each{|z|z.split(',').each{|x|m=x.strip().split;b[m[1]]<m[0].to_i ? b[m[1]]=m[0].to_i : 0}};s+=b.values().inject(:*)}
p s