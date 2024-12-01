class Solution
  def initialize(part, input)
    @part = part.to_i
    @input = input
    @left_list = @input.map(&:first)
    @right_list = @input.map(&:last)
    @sum = 0
  end

  def call
    @part == 1 ? part_one : part_two
    @sum
  end

  def part_one
    @left_list.sort.each_with_index do |item, index|
      a, b = [@right_list.sort[index], item].sort
      @sum += b - a
    end
  end

  def part_two
    @left_list.each do |l_item|
      @sum += l_item * (@right_list.select { |r_item| r_item == l_item }).size
    end
  end
end
