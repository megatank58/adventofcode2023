i=gets(nil).split"\n"
s=[]
b={"red"=>12,"green"=>13,"blue"=>14}
i.each{|t|f=0;d=t.split()[1].chop();t.split(":")[1].split(";").each{|z|z.split(',').each{|x|m=x.strip().split;b[m[1]]<m[0].to_i ? f=1 : 0}};f==0 ? s.push(d.to_i):0}
p s.sum