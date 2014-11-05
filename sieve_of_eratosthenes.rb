class SieveOfEratosthenes
  def initialize(maximum_value)
    @control_array = Array.new(maximum_value - 1) {|x| x + 2}
  end

  def find_primes
    @control_array.each_index do |idx|
      break if @control_array[(idx)] >= Math::sqrt(@control_array[-1])
      @control_array.each_index do |idy|
        @control_array.delete_at(idy) if factor(@control_array[idx], @control_array[idy])
      end
    #puts @control_array.join(' ')
    end
    return @control_array
  end

  def factor(x,y)
    if x == y
      return false
    elsif x.nil? || y.nil?
      return false
    else
      if y % x == 0
        return true
      end
      unless y % x == 0
        return false
      end
    end
  end      
end

s = SieveOfEratosthenes.new(1000)
puts s.find_primes

