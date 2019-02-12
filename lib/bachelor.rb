require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  i = 0
  str = ""
  data.each do |key, val|
    #binding.pry
    if key == season
      while i < val.length
        if val[i]["status"] == "Winner"
          str = val[i]["name"].split(' ')
          return str[0]
        end
        i += 1
      end
    end
  end

end

def get_contestant_name(data, occupation) #data = { season: [array of hashes]}
  # code here
  i = 0
  str = ""
  data.each do |key, val| #key = season, val = [{}, {}, {}]
    #binding.pry
    while i < val.length # i < 30
      if val[i]["occupation"] == occupation
        str = val[i]["name"]
        return str
      end
      i += 1
    end
  end

end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  i = 0
  data.each do |key, val|
    while i < val.length
      if val[i]["hometown"] == hometown
        counter += 1
      end
      i += 1
    end
  end
  counter

end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
