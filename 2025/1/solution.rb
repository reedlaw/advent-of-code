class Solution
  def initialize(part, input)
    @part = part.to_i
    @input = input
    @sum = 0
  end

  def call
    @part == 1 ? part_one : part_two
    @sum
  end

  def part_one
    dial = 50
    @input.each do |input|
      direction = input[0]
      amount = input[1..].to_i
      if direction == 'R'
        dial += amount
      else
        dial -= amount
      end
      while dial < 0 do
        dial += 100
      end
      while dial > 99 do
        dial -= 100
      end
      puts "The dial is rotated #{input} to point at #{dial}"
      @sum += 1 if dial == 0
    end
  end

  def part_two
    dial = 50
    @input.each do |input|
      direction = input[0]
      amount = input[1..].to_i
      amount.times do
        if direction == 'R'
          dial += 1
        else
          dial -= 1
        end
        if dial.negative?
          dial += 100
        end
        if dial > 99
          dial -= 100
        end
        @sum += 1 if dial.zero?
      end
    end
  end
end
