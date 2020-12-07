INPUT = File.read_lines("input.txt")
BAGS = INPUT.map { |line| line = line.split(" bags contain "); { line[0], line[1].gsub(/ bags?\.?/, "").split(", ").map(&.split(limit: 2)) } }.to_h
TARGET = "shiny gold"

def contains_target(key : String) : Bool
  BAGS[key].any? { |rule| rule[0] != "no" && (rule[1] == TARGET || contains_target(rule[1])) }
end

def count_bags(key : String) : Int32
  BAGS[key].sum { |rule| rule[0] == "no" ? 0 : count_bags(rule[1]) * rule[0].to_i } + 1
end

# Part 1
p BAGS.keys.count { |k| contains_target(k) }
# Part 2
p count_bags(TARGET) - 1