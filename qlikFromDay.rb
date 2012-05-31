require 'yahoofinance'

File.open("qlikExactDay.txt", "w") do |file|

  YahooFinance::get_HistoricalQuotes('QLIK', Date.parse('2011-12-1'),
									 Date.today()) do |hq|
	file.puts "#{hq.symbol},#{hq.date},#{hq.high},#{hq.low},#{hq.close}"
  end
end
