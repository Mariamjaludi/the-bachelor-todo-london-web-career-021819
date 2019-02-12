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
=begin
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
=end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  # data = { season2: [{name: str, age: str, home: str}, {name: str, age: str, home: str}], season3: [{name: str, age: str, home: str}, {name: str, age: str, home: str}]}
  counter = 0

  data.each do |key, val|
    val.each do |k2|
      k2.each do |k3, v3|
        if v3 == hometown
          counter += 1
        end
      end
    end
  end
  counter
end


def get_occupation(data, hometown)
  # code here
  i = 0
  data.each do |key, val| # key is season, val is an array of hashes
    data.each do |k2|
      binding.pry
      if k2["hometown"] == hometown
        return k2["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
end
