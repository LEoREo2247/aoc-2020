# Part 1
p (File.read_lines("input.txt").map(&.to_i).each_combination(2).find(&.sum.== 2020) || raise "not found").product
# Part2
p (File.read_lines("input.txt").map(&.to_i).each_combination(3).find(&.sum.== 2020) || raise "not found").product