def stock_picker(stocks)

  best_buy_date = 0
  best_sell_date = 0
  best_sell_price = stocks[best_sell_date]
  best_buy_price = stocks[best_buy_date]
  profit = 0
  
  stocks.each_with_index do |ele1, i|
    stocks.each_with_index do |ele2, k|
      if i < k && (ele2 - ele1) > profit
        best_buy_date = i
        best_sell_date = k
        profit = ele2 - ele1
      end
    end
  end

  finally = ["Buy on: #{best_buy_date}", "Sell on: #{best_sell_date}"]

  puts finally
  puts "For a Profit of: $#{profit}"

end