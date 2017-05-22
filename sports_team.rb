class SportsTeam

  attr_accessor :team_name, :coach, :players

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def get_team_name
    return @team_name
  end

  def get_players
    return @players
  end

  # def get_coach
  #   return @coach
  # end

  # def set_coach(new_coach)
  #   @coach = new_coach
  # end

  def new_player_add(new_player)
    @players << new_player
    
  end

  def players_list_search(players_search_string)
    #create an array for players that match
    matched = []
    #parse the string into an array of strings
    players_search_array = players_search_string.split(', ')
    #loop through array of players to search for
    for player in players_search_array
    #loop through player roster
      for roster_player in @players
        #add player matches to players_found array
        if player == roster_player
          matched << player
        end
      end
    end
    #return players_found
    return matched
  end

  def score_update(result)
    result == "win" ? @points += 3 : @points
  end


end