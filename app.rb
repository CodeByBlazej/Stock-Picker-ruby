require 'pry-byebug'

def stock_picker (prices)
  days = []

  # firstly check what is the biggest value and whats the smallest
  # then going from the beggining to the end pick when to buy and when to sell
  max_prices = prices.max(prices.length)
  
  binding.pry

#  prices.each do |price|
#   if 
    
#     end
#   end

end

stock_picker([17,3,6,9,15,8,6,1,10])