INPUT = File.read("input.txt")

# Part 1
p INPUT.split("\n\n").sum(&.gsub("\n","").chars.uniq.size)
# Part 2
p INPUT.split("\n\n").sum(&.split.map(&.chars).reduce { |s, v| s & v }.size)