ADDITION = 1
MULTIPLICATION = 2
END_OF_FILE = 99

def run(input, program_pointer)
  opcode, in_1, in_2, out = input[(program_pointer..program_pointer + 4)]

  case opcode
  when ADDITION
    input[out] = input[in_1] + input[in_2]
  when MULTIPLICATION
    input[out] = input[in_1] * input[in_2]
  when END_OF_FILE
    return
  end

  run input, program_pointer + 4
end

input = IO.read("../input.txt")
            .split(",")
            .map &:to_i

run input, 0
puts input[0]

