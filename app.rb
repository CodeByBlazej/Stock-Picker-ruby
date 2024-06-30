def stock_picker (prices)

  days = []

  max_prices = prices.max(prices.length)
  

  prices.each_with_index do |stock_price, index|
    if stock_price < max_prices[index]
      days.push(index)
      break if days.length == 1
    end
  end

  if !days.empty?
    prices.each_with_index do |stock_price, index|
      if stock_price > max_prices[index]
        days.push(index)
        break if days.length == 2
      end
    end
  end

  p days

end

stock_picker([17,3,6,9,15,8,6,1,10])