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
       @control_array.delete_at(idy) if y % x == 0
      end
    end
    return @control_array
  end
end
