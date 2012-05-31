require 'yahoofinance'

File.open("qlik.txt", "w") do |file|

  YahooFinance::get_HistoricalQuotes_days('QLIK', 5) do |ql|
	file.puts "#{ql.symbol},#{ql.date},#{ql.high},#{ql.low},#{ql.close}"
  end
  
end
