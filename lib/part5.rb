class CartesianProduct
  include Enumerable

  # YOUR CODE HERE
  def initialize(seq1,seq2)
    @seq1 = seq1
    @seq2 = seq2
    @cart_prod = []
    self.cartesian
  end
  
  def cartesian
    @seq1.each {|a| @seq2.each {|b| @cart_prod.push([a,b])} }
  end

  def each(&block)
    @cart_prod.each &block
  end
  
end
