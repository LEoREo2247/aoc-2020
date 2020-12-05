INPUT = File.read("input.txt")
SEAT_IDS = INPUT.tr("FBLR", "0101").split.map { |bin| bin[0..6].to_i(2) * 8 + bin[-3..-1].to_i(2) }

# Part 1
p SEAT_IDS.max
# Part 2
p (Set.new(SEAT_IDS.min..SEAT_IDS.max) - SEAT_IDS).first