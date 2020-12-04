INPUT = File.read_lines("input.txt")
SLOPES = [{1,1}, {3,1}, {5,1}, {7,1}, {1,2}]
# Part 1
p INPUT.map_with_index { |l, y| l[(SLOPES[1][0]*y) % l.size]}.count('#')
# Part 2
p SLOPES.map { |s| x = 0; (0...INPUT.size).step(s[1]).map { |y| l = INPUT[y]; x += s[0] if y > 0; l[x % l.size] }.count('#') }.product