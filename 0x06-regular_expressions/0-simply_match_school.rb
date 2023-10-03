#!/usr/bin/env ruby

def match_school(input)
    regex = /School/
    match = input.scan(regex)

    if match.any?
        puts match.join
    else
        puts ''
    end
end

if ARGV.length == 1
    input_string = ARGV[0]
    match_school(input_string)
end
