When(/^сложили ([^"]*) и ([^"]*) и проверили, что сумма равна ([^"]*)$/) do |first_count, second_count, finally_count|
  Calculation.new.summirovanie first_count, second_count, finally_count
end
