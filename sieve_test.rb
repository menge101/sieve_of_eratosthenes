require "minitest/autorun"
require './sieve_of_eratosthenes'

class SieveTest < MiniTest::Test
  def test_factor?
    s = SieveOfEratosthenes.new(6)
    assert s.factor?(2,2)
    assert s.factor?(2,4)
    assert !s.factor?(3,5)
  end

  def test_find_primes
    s = SieveOfEratosthenes.new(30)
    assert_equal [2,3,5,7,11,13,17,19,23,29], s.find_primes
  end
end
