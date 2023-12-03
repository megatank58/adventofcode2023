i = gets(nil).split "\n"
s = []
i.each_with_index { |t, j|
  r = [-1, -1]
  t += "."
  n = 0

  t.chars.each_with_index { |c, k|
    f = 0
    c.match?(/[[:digit:]]/) ? r[0] == -1 ? (r[0] = r[1] = k; n = n * 10 + c.to_i) : (r[1] = k; n = n * 10 + c.to_i) :
      r.sum != -2 ?
      (j != 0 ? (i[j - 1][(r[0] != 0 ? r[0] - 1 : r[0])..(r[1] + 1)].match?(/[^[:alnum:]\.]/) ? (s.push(n); f = 1) : 0) : 0
      t[(r[0] != 0 ? r[0] - 1 : r[0])..(r[1] + 1)].match?(/[^[:alnum:]\.]/) && f == 0 ? (s.push(n); f = 1) : 0
      j != i.length - 1 && f == 0 ? (i[j + 1][(r[0] != 0 ? r[0] - 1 : r[0])..(r[1] + 1)].match?(/[^[:alnum:]\.]/) ? s.push(n) : 0) : 0
      r = [-1, -1]; n = 0) : 0
  }
}
p s.sum
