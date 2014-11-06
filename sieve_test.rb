require "minitest/autorun"
require './sieve_of_eratosthenes'

class SieveTest < MiniTest::Test
  def test_find_primes
    s = SieveOfEratosthenes.new(40)
    assert_equal [2,3,5,7,11,13,17,19,23,29,31,37], s.find_primes
  end
end
