i=gets(nil).split
s=0
i.map{|x|n=x.split(','); y,z=n.map{|a|a.split('-')}; s+=(y[0].to_i<=z[0].to_i&&y[1].to_i>=z[1].to_i)||(y[1].to_i<=z[1].to_i&&y[0].to_i>=z[0].to_i) ? 1:0}
p s