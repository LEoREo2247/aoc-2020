INPUT = File.read_lines("input.txt")
# Part 1
p INPUT.map{|l| i=l.split(/-| /); (i[0].to_i..i[1].to_i)===i[3].count(i[2][0])}.count(true)
# Part 2
p INPUT.map{|l| i=l.split(/-| /); [i[3][i[0].to_i-1], i[3][i[1].to_i-1]].count(i[2][0])}.count(1)