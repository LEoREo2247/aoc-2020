input = File.read_lines("input.txt")
# Part 1
p input.map_with_index { |l, y| l[(3*y) % l.size]}.count('#')
# Part 2
p [{1,1}, {3,1}, {5,1}, {7,1}, {1,2}].map { |s| x = 0; (0...input.size).step(s[1]).map { |y| l = input[y]; x += s[0] if y > 0; l[x % l.size] }.count('#') }.product