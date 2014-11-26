require 'minitest'
require 'minitest/autorun'
require 'prime'
require './sieve_of_eratosthenes'

class SieveTest < MiniTest::Test
  def test_find_primes
    s = SieveOfEratosthenes.new(100000)
    assert_equal s.find_primes, Prime.first(9592)
  end
end
