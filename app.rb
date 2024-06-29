require 'pry-byebug'

def stock_picker (prices)
  days = []

  # firstly check what is the biggest value and whats the smallest
  # then going from the beggining to the end pick when to buy and when to sell
  max_prices = prices.max(prices.length)
  
  
  prices.each_with_index do |stock_price, stock_index|
      max_prices.each_with_index do |max_price, max_index|
        if stock_price[stock_index] < max_price[max_index]
          days.push(prices[stock_index])
          break
          # elsif stock_price > max_price
          #   days.push(index)
        end
      end
    end


  # prices.each do |stock_price|
  #   max_prices.each do |max_price|
  #     if stock_price < max_price
  #       days.push(prices.index(stock_price))
  #       break
  #     end
  #   end
  # end

  binding.pry


end

stock_picker([17,3,6,9,15,8,6,1,10])