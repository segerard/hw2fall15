class CartesianProduct
  include Enumerable

  def initialize(seq1,seq2)
    @seq1 = seq1
    @seq2 = seq2
    @cart_prod = []
    self.cartesian
  end
  
  def cartesian
    @seq1.each {|a| @seq2.each {|b| @cart_prod.push([a,b])} }
  end

  def each
    @cart_prod.each {|val| yield val}
  end
  
end


