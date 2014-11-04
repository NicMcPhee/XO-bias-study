#!/usr/bin/ruby

java = "java -jar ecj.jar "
param_file = "-file /Users/mcphee/Documents/Research/ecj/src/ec/app/regression/sine_erc.params "
popsize = 4096
popsize_param = "-p pop.subpop.0.size=#{popsize} "
bias_param = "-p gp.koza.xover.include-xover-bias="

command = java + param_file + popsize_param + bias_param

num_runs = 100

num_runs.times do |run_number|
  [true, false].each do |bias|
    full_command = "#{command}#{bias} &> stdout_#{bias}_#{run_number}"
    puts full_command
    %x{#{full_command}}
    %x{mv out.stat out_#{bias}_#{run_number}.stat}
  end
  puts "Finished run #{run_number}"
end