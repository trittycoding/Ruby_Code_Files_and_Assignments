# Question 5
# Test class that produces the result of 2^(N-1),
# starting with the first square on the chess board = 2^0.
# As sqaures++, n++.
class Grains
  def initialize; end

  def self.square(n)
    2**(n - 1)
  end

  def self.total
    total = 0
    n = 1
    64.times do
      total += square(n)
      n += 1
    end
    total
  end
end
