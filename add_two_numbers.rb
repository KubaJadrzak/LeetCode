# frozen_string_literal: true

class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

def build_linked_list(values)
  head = nil
  current = nil

  values.each do |val|
    new_node = ListNode.new(val)

    if head.nil?
      head = new_node
      current = head
    else
      current.next = new_node
      current = current.next
    end
  end

  head
end

def add_two_numbers(l1, l2)
  l1_node = l1
  l2_node = l2
  rest = 0
  head = nil
  current = nil

  while l1_node || l2_node || rest.positive?
    v1 = l1_node ? l1_node.val : 0
    v2 = l2_node ? l2_node.val : 0

    sum = v1 + v2 + rest
    rest = sum / 10
    digit = sum % 10

    new_node = ListNode.new(digit)

    if current.nil?
      head = new_node
      current = head
    else
      current.next = new_node
      current = current.next
    end

    l1_node = l1_node&.next
    l2_node = l2_node&.next
  end

  head
end

l1 = build_linked_list([1, 2, 3])
l2 = build_linked_list([1, 2, 3])

puts add_two_numbers(l1, l2)
