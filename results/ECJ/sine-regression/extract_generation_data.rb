#!/usr/bin/ruby

File.open("generation_results.txt", "w") do |results_file|
  results_file.puts "Generation\tBias\tStandardized.fitness\tAdjusted.fitness\tHits"
  Dir.glob('output_files/stdout*') do |data_file|
    bias = data_file.match("stdout_(false|true)_\\d+")[1]
    generation_number = 0
    File.foreach(data_file) do |line|
      # best fitness of generation Fitness: Standardized=5.4788513 Adjusted=0.15434834 Hits=8
      is_data_line = line.match(/best fitness of generation Fitness: Standardized=([.\d]+) Adjusted=([.\d]+) Hits=(\d+)/)
      if is_data_line
        standardized_fitness = Float(is_data_line[1])
        adjusted_fitness = Float(is_data_line[2])
        number_hits = Integer(is_data_line[3])
        results_file.puts "#{generation_number}\t#{bias}\t#{standardized_fitness}\t#{adjusted_fitness}\t#{number_hits}"
        generation_number += 1
      end
    end
  end
end
