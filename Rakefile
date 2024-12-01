require 'rake'

task :aoc, [:year, :day, :part] do |t, args|
  require "./#{args[:year]}/#{args[:day]}/input.rb"
  require "./#{args[:year]}/#{args[:day]}/solution.rb"
  solution = Solution.new(args[:part], Input::CODE)
  puts solution.call
end
