#!/usr/bin/env ruby

def is_prime(number)
  # validations
  if (!number.is_a? Integer || i <= 1)
    raise(ArgumentError, "not a natural number greater than 1")
  end
  raise(ArgumentError, "not a natural number greater than 1") if number <= 1

  return true if (2..number - 1).all? { |i| number % i != 0 }
  return false
end