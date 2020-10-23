# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here


def player_data
  player_info = {}
  game_hash[:home][:players].each do |hash|
  player_info[(hash[:player_name])] = hash[:player_name]
    hash.each_with_object({}) do |(k, v), a|
     a[k] = v
     a[:team_name] = "Brooklyn Nets"
     player_info[(hash[:player_name])] = a
    end
  end
  player_info
  game_hash[:away][:players].each do |hash|
  player_info[(hash[:player_name])] = hash[:player_name]
    hash.each_with_object({}) do |(k, v), a|
     a[k] = v
     a[:team_name] = "Charlotte Hornets"
     player_info[(hash[:player_name])] = a
    end
  end
  return player_info
end

def num_points_scored(player)
  player_data.each do |key, value|
    if value[:player_name] == player
     return value[:points]
    end
  end
end

def shoe_size(player)
  player_data.each do |key, value|
    if value[:player_name] == player
     return value[:shoe]
    end
  end
end

def player_numbers(team)
  jersey_numbers = []
  player_data.each do |key, value|
    if value[:team_name] == team
      jersey_numbers << value[:number]
    end
  end
  jersey_numbers
end

def player_stats(player)
 player_data.each do |key, value|
    if value[:player_name] == player
        value.delete(:team_name)
        return value
    end
  end
end

def big_shoe_rebounds
  size = []
  player_data.each do |key, value|
    size << value[:shoe]
  end
    player_data.each do |key, value|
      if value[:shoe] == size.max
        return value[:rebounds]
      end
    end
end

def team_colors(team)
  game_hash.each do |key, value|
    if value[:team_name] == team
      return value[:colors]
    end
  end
end

def team_names
  teams = []
  game_hash.each do |key, value|
    teams << value[:team_name]
  end
  return teams
end