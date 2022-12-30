i=gets(nil)
d=Hash.new{|h,k|h[k]=[]}
m=[]
i.each_line do|l|
case l.split
in[/\d+/=>s,_]
d[m.clone]<<s.to_i
in["dir",/\w+/=>dir]
new_dir=m.clone.append(dir)
d[m.clone]<<d[new_dir]
in["$","cd",".."]
m.pop
in["$","cd",/.+/=>dir]
m<<dir else end end
t=70000000
z=30000000
u=d[["/"]].flatten.sum
q=z-(t-u)
puts d.map{|_,v|v.flatten.sum}.select { |s| s >= q }.min