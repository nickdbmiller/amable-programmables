# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day, and returns a pair of days representing the best day to buy and the best day to sell. (starting at day zero.)

def stock_picker(stocks)
  # highest = {:price => nil, :day => nil}
  # lowest = {:price => nil, :day => nil}
  buy_at = nil
  sell_at = nil
  best_profit = 0

  stocks.each_with_index do | buy, i |
    stocks[(i+1)..-1].each do | sell |
      profit = sell - buy
      if profit > best_profit
        buy_at = buy
        sell_at = sell
        best_profit = profit
      end
    end
  end
  [stocks.index(buy_at), stocks.index(sell_at)]
end

# Tests
if stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10]) == [1, 4]
  p "Test passed!"
else
  p "Test failed."
end
