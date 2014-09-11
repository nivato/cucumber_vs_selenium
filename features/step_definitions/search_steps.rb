Given(/^a user on a "(.*)" page$/) do |url|
  puts "Opening browser with #{url} URL..."
  @driver.navigate.to "http://#{url}"
end

When(/^I enter "(.*)" into a search input$/) do |keyword|
  puts "Entering #{keyword} into search input..."
  input = @driver.find_element(:name, 'q')
  input.send_keys keyword
end

And(/^I click on Search button$/) do
  puts "Clicking Search button..."
  button = @driver.find_element(:name, 'btnG')
  button.click
end

Then(/^resulting page contains "(.*)" link$/) do |result|
  @wait.until{@driver.page_source.include? result}
  assert(@driver.page_source.include? result)
  puts "Yey! Google did fing #{result} and it is present in results..."
end
