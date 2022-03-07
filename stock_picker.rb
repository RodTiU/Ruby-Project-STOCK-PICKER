def stock_picker(stock_prices_by_day)
  profit_matrix = Array.new(stock_prices_by_day.length - 1) { Array.new(stock_prices_by_day.length - 1) }
  for i in (0...stock_prices_by_day.length).to_a
    for j in (0...stock_prices_by_day.length).to_a
      if i < stock_prices_by_day.length - 1
        if i < j
          profit_matrix[i][j] = stock_prices_by_day[j] - stock_prices_by_day[i]
        elsif i >= j
          profit_matrix[i][j] = 0
        end
      end
    end
  end
  i_max = profit_matrix.index(profit_matrix.max)
  j_max = profit_matrix[i_max].index(profit_matrix[i_max].max)
  [i_max, j_max]
end

stock_prices_by_day = [17, 3, 6, 9, 15, 8, 6, 1, 10]
stock_picker(stock_prices_by_day)
