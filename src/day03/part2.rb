i = gets(nil).split "\n"

s = []
i.each_with_index { |t, j|
  t += "."

  t.chars.each_with_index { |c, k|
    f = 0
    n = []
    c.match?(/[\*]/) ?
      (j != 0 ? (i[j - 1][(k - 1)..(k + 1)].match?(/[[:alnum:]]/) ? (f += 1; n.push([j - 1, [(k - 1),(k + 1)]])) : 0) : 0
      t[(k - 1)..(k + 1)].match?(/[[:alnum:]]/) ? (f += 1; n.push([j, [(k - 1),(k + 1)]])) : 0
      j != i.length - 1 ? (i[j + 1][(k - 1)..(k + 1)].match?(/[[:alnum:]]/) ? (f += 1; n.push([j + 1, [(k - 1),(k + 1)]])) : 0) : 0) : 0

    s.push(n) if f == 2
  }
}

s.each {
  |t|
  l = i[t[0][0]]
  m = t[0][1]
  r = -1..-1

  l.chars.each_with_index { 
    |c, j|
    if j < m
    c.match?(/[[:alnum:]]/) ? (r = (*(m[0][1])[0] + j-3<0 ? (*(m[0][1])[0] + j) : (*(m[0][1])[1] + j-3))..j+3) : 0
  }

  p r
  p l[r]
}

p s
