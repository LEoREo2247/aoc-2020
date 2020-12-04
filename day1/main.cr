INPUT = File.read_lines("input.txt")
# Part 1
p (INPUT.map(&.to_i).each_combination(2).find(&.sum.== 2020) || raise "not found").product
# Part2
p (INPUT.map(&.to_i).each_combination(3).find(&.sum.== 2020) || raise "not found").product