module Findable
  
  def reset_all
    all.clear
  end
  
  def count
    all.count
  end
  
  def find_by_name(name)
    all.detect {|a| a.name == name}
  end
  
end












# module Findable
  
#   def find_by_name(name)
#     self.all.detect{|a| a.name == name}
#   end
  
# end