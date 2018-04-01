# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
require 'pry'

def is_palindrome(number)
  return false if number.nil? || number < 0

  counter = integers(number)
  right_counter = 0

  (counter/2).times do

    right = (number / 10 ** right_counter) % 10
    left = (number % 10 ** counter) / (10 ** (counter - 1))

    return false if right != left

    counter -= 1
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
