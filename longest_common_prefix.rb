# frozen_string_literal: true

def longest_common_prefix(strs)
  first_str = strs.first
  prefix_length = first_str.size
  strs.drop(1).each do |str|
    size = if first_str.size > str.size
             str.size
           else
             first_str.size
           end
    prefix = ''
    (0...size).each do |i|
      break if first_str[i] != str[i]

      prefix += first_str[i]
    end
    prefix_length = prefix.length if prefix_length > prefix.length
  end
  first_str[0...prefix_length]
end

puts longest_common_prefix(%w[cir car])
