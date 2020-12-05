INPUT = File.read("input.txt")
FIELDS = {"byr" => ("1920".."2002"), "iyr" => ("2010".."2020"), "eyr" => ("2020".."2030"), "hgt" => /^(1[5-8][0-9]|19[0-3])cm$|^(59|6[0-9]|7[0-6])in$/, "hcl" => /^#[0-9a-f]{6}$/, "ecl" => /^(amb|blu|brn|gry|grn|hzl|oth)$/, "pid" => /^\d{9}$/}
PASSPORTS = INPUT.split("\n\n").map(&.split.map(&.split(":")).to_h)
# Part 1
p PASSPORTS.count { |passport| FIELDS.keys.all? { |k| passport[k]? } }
# Part 2
p PASSPORTS.count { |passport| FIELDS.all? { |k, cond| value = passport[k]?; value && cond === value } }