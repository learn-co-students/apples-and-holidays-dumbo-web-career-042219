require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)

holiday_supplies[:winter][:christmas] << "#{supply}"

holiday_supplies[:winter][:new_years] << "#{supply}"

end


def add_supply_to_memorial_day(holiday_hash, supply)
holiday_supplies[:spring][:memorial_day] << "#{supply}"

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  holiday_hash[season][holiday_name] = supply_array

holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)

new_array = []
  
new_array <<(holiday_supplies[:winter][:christmas])

new_array <<(holiday_supplies[:winter][:new_years])

new_array.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  


  holiday_supplies.each do |season, holidays|
    puts "#{season.to_s.capitalize!}: #{holidays.to_s.capitalize!}"
      
    holidays.each do |holiday, supplies|
      puts "#{holiday.split("_").capitalize.join}: #{supplies.split.capitalize!.join}"
    end
  end

end 


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







