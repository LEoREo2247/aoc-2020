INPUT = File.read_lines("input.txt")

def run(input = INPUT, wait_termination = false)
  idx, acc, executed, terminated_gracefully = 0, 0, Set(Int32).new, false

  while true
    terminated_gracefully = true if idx == input.size
    break if !executed.add?(idx) || idx >= input.size
    op, arg = input[idx].split
    arg = arg.to_i

    acc += arg if op == "acc"
    idx += arg if op == "jmp"
    idx += 1 if op != "jmp"
  end

  wait_termination && !terminated_gracefully ? nil : acc
end

def fix_corrupted
  INPUT.each_with_index do |line, i|
    newline = line.split
    next if newline[0] == "acc"
    newline[0] = Set{"nop", "jmp"}.delete(newline[0]).first

    input = INPUT.clone
    input[i] = newline.join(" ")

    result = run(input, true)
    return result if result
  end
end

p run
p fix_corrupted