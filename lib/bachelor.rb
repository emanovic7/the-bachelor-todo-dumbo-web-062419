require 'pry'

def get_first_name_of_season_winner(data, season)
    data.each do |season_year, contestants|
      if season_year == season
        contestants.each do |contestant|
          if contestant["status"] == "Winner"
            return contestant["name"].split(" ")[0]
          end
          #binding.pry
        end
      end
      #binding.pry
    end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
      #binding.pry
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0

  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter

end

def get_occupation(data, hometown)
  occupation_array = []
  data.each do |season, contestants|
    contestants.each do |contestant|
      #binding.pry
      if contestant["hometown"] == hometown
        occupation_array << contestant["occupation"]
      end
    end
  end

  occupation_array[0]
end


def get_average_age_for_season(data, season)
  number_of_contestants = 0
  age_total = 0

  data.each do |year, contestants|
    if year == season
      contestants.each do |contestant|
        age_total += (contestant["age"]).to_i
        number_of_contestants += 1
      end
    end
  end


  (age_total / number_of_contestants.to_f).round(0)
end
