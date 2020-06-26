require 'pry'

def get_first_name_of_season_winner(data, season)
  winner = ""
  season_identified = data[season]
  season_identified.each do |contestant|
    if contestant["status"] == "Winner"
      winner = contestant["name"].split.first
    else
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  #collapse all contestants into one array of 290 contestants
  all_contestants = []
  data.each do |season|
    season_contestants = []
      season.each do |castmember|
        season_contestants = season_contestants << castmember
      end
      season_contestants.shift
      all_contestants << season_contestants
    end
    all_contestants= all_contestants.flatten
  all_contestants
  #find the contestant that has the occupation passed into the objects
  all_contestants.each do |contestant|
    if contestant["occupation"] == occupation
      return contestant["name"]
    else
    end
  end

end

def count_contestants_by_hometown(data, hometown)
  #collapse all contestants into one array of 290 contestants
  all_contestants = []
  data.each do |season|
    season_contestants = []
      season.each do |castmember|
        season_contestants = season_contestants << castmember
      end
      season_contestants.shift
      all_contestants << season_contestants
    end
    all_contestants= all_contestants.flatten
  all_contestants
  #find the contestant that has the occupation passed into the objects
  counter = 0
  all_contestants.each do |contestant|
    if contestant["hometown"] == hometown
      counter += 1
    else
    end
  end
  counter
end

def get_occupation(data, hometown)
  #collapse all contestants into one array of 290 contestants
  all_contestants = []
  data.each do |season|
    season_contestants = []
      season.each do |castmember|
        season_contestants = season_contestants << castmember
      end
      season_contestants.shift
      all_contestants << season_contestants
    end
    all_contestants= all_contestants.flatten
  all_contestants
  #find the contestant that has the occupation passed into the objects
  all_contestants.find do |contestant|
    if contestant["hometown"] == hometown
      return contestant["occupation"]
    else
    end
  end
end

def get_average_age_for_season(data, season)
  average = 0.0
  total_ages = 0.0
  ages = []
  season_identified = data[season]
  season_identified.map { |contestant| ages << contestant["age"].to_f }
  total_ages = ages.reduce(0) { |sum, num| sum + num}
  average = (total_ages/(ages.length)).round
  average
end
