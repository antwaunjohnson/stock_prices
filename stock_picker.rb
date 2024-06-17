def stock_picker(prices)
  return [] if prices.length < 2
  
  min_price_index = 0
  max_profit = 0
  best_days = [0, 1]

  prices.each_with_index do |price, current_day|
    if price < prices[min_price_index]
      min_price_index = current_day
    end

    current_profit = price - prices[min_price_index]

    if current_profit > max_profit && current_day > min_price_index
      max_profit = current_profit
      best_days = [min_price_index, current_day]
    end
  end
  
  best_days
end

puts stock_picker([24,13,4,17,22,19,10,9,17])
