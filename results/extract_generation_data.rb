#!/usr/bin/ruby

File.open("lid_generation_results.txt", "w") do |results_file|
  results_file.puts "Generation\tBias\tStandardized.fitness\tAdjusted.fitness\tHits"
  Dir.glob('lid/log*.txt') do |data_file|
    bias = data_file.match(/log\d+_(false|true)/)[1]
    generation_number = 0
    File.foreach(data_file) do |line|
      # best fitness of generation Fitness: Standardized=5.4788513 Adjusted=0.15434834 Hits=8
      # is_data_line = line.match(/best fitness of generation Fitness: Standardized=([.\d]+) Adjusted=([.\d]+) Hits=(\d+)/)
      is_data_line = line.match(/best fitness of generation Fitness: ([.\d]+)/)
      if is_data_line
        standardized_fitness = Float(is_data_line[1])
        #adjusted_fitness = Float(is_data_line[2])
        #number_hits = Integer(is_data_line[3])
        #results_file.puts "#{generation_number}\t#{bias}\t#{standardized_fitness}\t#{adjusted_fitness}\t#{number_hits}"
        results_file.puts "#{generation_number}\t#{bias}\t#{standardized_fitness}"
        generation_number += 1
      end
    end
  end
end
