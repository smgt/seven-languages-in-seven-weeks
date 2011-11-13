#!/usr/bin/env ruby -w

def grep(file, search)
  if File.exists?(file)
  
      file = File.open(file)
      file.each_with_index do |line, i|
        if line =~ /#{search}/
          puts "#{i}: #{line}"
        end
      end
  else
    raise StandardError
  end
end

grep(ARGV[0], ARGV[1])
