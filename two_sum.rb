# frozen_string_literal: true

def two_sum(nums, target)
  seen = {}
  nums.each_with_index do |n, i|
    diff = target - n
    return [seen[diff], i] if seen.key?(diff)

    seen[n] = i
  end
end
