class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  if game[0][0].class == String  
    raise WrongNumberOfPlayersError unless game.length == 2
    strategies = ["R","P","S"]
    raise NoSuchStrategyError unless strategies.include? (game[0][1].upcase)
    raise NoSuchStrategyError unless strategies.include? (game[1][1].upcase)
    # YOUR CODE HERE 
    strategy1 = game[0][1].upcase
    strategy2 = game[1][1].upcase  
    
    strategy1Index = strategies.index(strategy1) 
    if strategy1 == strategy2
      return game[0]
    elsif strategy2 == strategies[strategy1Index-1]
      return game[0]
    else
      return game[1]
    end  
  else
    rps_game_winner([rps_game_winner(game[0]),rps_game_winner(game[1])])
  end
end

def rps_tournament_winner(tournament)
  # YOUR CODE HERE
  return rps_game_winner(tournament)
end
a = [[[["joe","P"],["Mary","S"]],[["Bob","R"],["alice","s"]]],[[["steve","S"],["Jane","P"]],[["ted","R"],["carol","P"]]]]
puts rps_tournament_winner(a)
#feel free to add your own helper functions as needed
