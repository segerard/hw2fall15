class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError, "Number of players must be 2!" unless game.length == 2
  strategies = ["R","P","S"]
  raise NoSuchStrategyError, "Player 1 has invalid strategy, must be R,P,or S!" unless strategies.include? (game[0][1].upcase)
  raise NoSuchStrategyError, "Player 2 has invalid strategy, must be R,P,or S!" unless strategies.include? (game[1][1].upcase)
  
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
end

def rps_tournament_winner(tournament)
  if tournament[0][0].class == String  
    rps_game_winner(tournament)
  else
    rps_tournament_winner([rps_tournament_winner(tournament[0]),rps_tournament_winner(tournament[1])])
  end
end
