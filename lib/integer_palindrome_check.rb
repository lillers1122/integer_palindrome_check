# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
require 'pry'

def is_palindrome(number)
  return false if number == nil || number < 0

  left_counter = integers(number)
  right_counter = -1

  (left_counter/2).times do

    right = (number / 10 ** (right_counter + 1)) % 10
    left = (number % 10 ** left_counter) / (10 ** (left_counter - 1))

    return false if right != left

    left_counter -= 1
    right_counter += 1
  end
  return true
end

def integers(number)
  i = 1
  integers = 1

  until (number / i) < 10
    i *= 10
    integers += 1
  end
  return integers
end
