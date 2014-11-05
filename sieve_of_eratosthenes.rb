class SieveOfEratosthenes
  def initialize(maximum_value)
    @control_array = Array.new(maximum_value - 1) {|x| x + 2}
  end

  def find_primes
    @control_array.each_index do |idx|
      break if @control_array[(idx)] >= Math::sqrt(@control_array[-1])
      @control_array.each_index do |idy|
        x = @control_array[idx]
        y = @control_array[idy]
        next if x == y
        break if x.nil? || y.nil?
       @control_array.delete_at(idy) if factor?(x,y)
      end
    end
    return @control_array
  end

  def factor?(x,y)
    if y % x == 0
      return true
    else
      return false
    end
  end      
end

s = SieveOfEratosthenes.new(10000)
puts s.find_primes.join(' ')

