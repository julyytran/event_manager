require 'csv'

def clean_number(number)
  number.gsub!(/\D/, '')
  if number.length < 10 || if number.length > 11
    puts "#{number} is a bad number"
  elsif number.length == 11
    if number[0] == "1"
      number.delete(number[0])
      puts number
    else
      puts "#{number} is a bad number"
    end
  else
    puts number
  end
  end
end

puts "EventManager initialized."
contents = CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol

contents.each do |row|
  name = row[:first_name]
  puts "#{name} #{clean_number(row[:home_phone])}"
end
