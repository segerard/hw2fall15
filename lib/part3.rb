class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  attr_accessor :name
  attr_accessor :calories
  
  def healthy?
    @calories < 200
  end
  
  def delicious?
    !!0
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    super(name,calories)
    @flavor = flavor
  end
   
  attr_accessor :flavor   
  
  def delicious?
    !(@flavor.downcase  == "black licoric")
  end
end

#########TESTING##############
a = JellyBean.new("sar",2000,"black licorice")
puts a.delicious?
puts a.healthy?
