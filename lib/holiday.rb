require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
#binding.pry
 return holiday_hash[:summer][:fourth_of_july][1]

  # given that holiday_hash looks like this:
  # {
  # :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #       :new_years => ["Party Hats"]
  #  },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  #return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |attribute, data|
   #binding.pry
    #winter.each do |data|
      data << supply
  end
  :winter
end




def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day]= supply

end

# holiday_supplies =  {
#   :winter => {
#     :christmas => ["Lights", "Wreath"],
#     :new_years => ["Party Hats"]
#   },
#   :summer => {
#     :fourth_of_july => ["Fireworks", "BBQ"]
#   },
#   :fall => {
#     :thanksgiving => ["Turkey"]
#     :columbus_day => [""]
#   },
#   :spring => {
#     :memorial_day => ["BBQ"]
#   }
# }


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name]= supply_array
  #  updated_hash = seasons => holidays
  return holiday_hash
end


def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten!

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do | season, holidays|
  #binding.pry
    puts "#{ season.capitalize}:"
      holidays.each do |holiday, supplies|
         #holiday.to_s.split("_")
        #binding.pry
         puts "  #{ holiday.to_s.split("_").map{|word| word.capitalize}.join(" ")}: #{supplies.join(", ") }"
        #capitalize_holiday << holiday.to_s.split("_")
      #  capitalize_holiday.each do |holiday|
      #      puts "#{holiday.capitalize.join(" ")}"
        end
      end
  end





def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  only_bbq = []
  holiday_hash.each do|season, holiday|

    holiday_hash[season].each do |holiday, supplies|
      # at this level each holiday => symbol,
      # at this level each supply => array
      # i want to get to the holiday whose supply => array => value => BBQ
        if supplies.include?("BBQ")
          only_bbq << holiday
     #binding.pry
   end
    #binding.pry
      #holiday[supplies].include? ["BBQ"]
     # supplies.collect do|item|
      #binding.pry
    end
    #only wants seasons if :holiday_name => array values = [BBQ]
  end
  only_bbq
end
