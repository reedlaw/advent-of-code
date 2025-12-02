require 'rake'

task :aoc, [:year, :day, :part, :sample] do |t, args|
  require "./#{args[:year]}/#{args[:day]}/input.rb"
  require "./#{args[:year]}/#{args[:day]}/solution.rb"
  if args[:sample]
    solution = Solution.new(args[:part], Input::SAMPLE)
  else
    solution = Solution.new(args[:part], Input::CODE)
  end
  puts solution.call
end
