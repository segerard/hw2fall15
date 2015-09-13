class Class

  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s   # make sure it's a string
    attr_reader attr_name        # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
#    class_eval "YOUR CODE HERE, USE %Q FOR MULTILINE STRINGS"
    class_eval %Q{def initialize; @#{attr_name}_history = [];self.#{attr_name}=nil;end
                  def #{attr_name}=(newVal); #{attr_name}=newVal; @#{attr_name}_history.push(newVal);end
                  def #{attr_name}_history; @#{attr_name}_history;end}
  end
end

class Foo
  attr_accessor_with_history :bar
end

f = Foo.new
f.bar=1
f.bar=2
f=Foo.new
f.bar=4
puts f.bar_history.size
