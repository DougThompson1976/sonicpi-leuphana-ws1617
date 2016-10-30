# Session 2
# Code-Beispiele zu 'tick', 'look' und verschiedenen Datenstrukturen

v1 = 2016
v2 = "Leuphana"

puts "Das Sonic Pi-Seminar finden #{v1} an der #{v2} statt."

# list ([a,b,c])
lst = [:c, :eb, :g, :bb, :d5]
#puts l

# vector (vector)
vct = (vector :c, :eb, :g, :bb, :d5)
# puts vct[1]

# ring (ring a,b,c)
rng = (ring :c, :eb, :g, :bb, :d5)
#puts rng

# line
ln = (line 1, 10, steps: 10, inclusive: true)
puts ln

# ramp
rmp = c.ramp
#puts rmp

# reverse
rvs = c.reverse
puts rvs

# mirror
mrr = c.mirror
puts mrr

# 'tick' und 'look'


