require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]


  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
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
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply


  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays
  
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply

  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array

  # code here
  # remember to return the updated hash
  
end

def all_winter_holiday_supplies(holiday_hash)
  array = []
  holiday_hash[:winter].each do |k, v|
    array << v
end
  array.flatten
  # return an array of all of the supplies that are used in the winter season
  
end

def all_supplies_in_holidays(holiday_hash)
    holiday_hash.each do |season, hash_key|
      puts "#{season.to_s.capitalize}:"
        hash_key.each do |holiday, supply|
          supply = supply.join(', ')
          holiday = holiday.to_s
          final_holiday = holiday.split('_').map(&:capitalize).join(" ")
          final_string = supply
          puts "  #{final_holiday}: #{final_string}"
          end
        end
    end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
holiday_array = []
  holiday_hash.each do |season, hash|
    hash.each do |holiday, supply_array|
      supply_array.each do |supply|
        if supply == "BBQ"
          holiday_array << holiday
        end
      end
    end
  end
  holiday_array
end







