module Paramable
  
  def to_param
   name.downcase.gsub(/ /, "-")
  end
  
  
  
end


















# module Paramable
  
#   def to_param
#     name.downcase.gsub(' ', '-')
#   end
  
# end