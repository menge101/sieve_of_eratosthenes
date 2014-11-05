require "minitest/autorun"
require './sieve_of_eratosthenes'

class SieveTest < MiniTest::Test
  def test_factor
    s = SieveOfEratosthenes.new(6)
    assert !s.factor(1,1)
    assert !s.factor(nil,5)
    assert !s.factor(5,nil)
    assert s.factor(2,4)
    assert !s.factor(3,5)
  end

  def test_find_primes
    s = SieveOfEratosthenes.new(6)
    assert_equal [2,3,5], s.find_primes
  end
end
