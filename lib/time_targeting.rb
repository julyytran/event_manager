require 'csv'
require 'time'


puts "EventManager initialized."
contents = CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol

contents.each do |row|
  name = row[:first_name]
  reg_date = row[:time]
  date = DateTime.strptime(reg_date, "%m/%d/%y %H:%M")
  puts "Hour: #{date.hour} Day: #{date.wday}"
end
