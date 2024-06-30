require 'pry-byebug'

def stock_picker (prices)
  daily_stock_prices = []

  max_prices = prices.max(prices.length)
  
  
  prices.each do |stock_price|
      max_prices.each do |max_price|
        if stock_price < max_price
          break if daily_stock_prices.length > 0
          daily_stock_prices.push(stock_price)
        end
      end
    end

    if !daily_stock_prices.empty?
      max_prices.each do |max_price|
        prices.each do |stock_price|
          if max_price < stock_price
            break if daily_stock_prices.length > 1
            daily_stock_prices.push(max_price)
          end
        end
      end
    end

    days = daily_stock_prices.map {|price| prices.index(price)}
    
    p days

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