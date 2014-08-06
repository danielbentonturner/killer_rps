require "killer_rps/version"

module KillerRPS

  def self.play(hash)
    
    case
      # when choices match
      when hash[:player1] == hash[:player2] 
        return {player1: :draw, player2: :draw}
      # when player 1 wins
      when hash[:player1] == :rock && hash[:player2] == :scissors
        return {player1: :win, player2: :lose}
      when hash[:player1] == :scissors && hash[:player2] == :paper
        return {player1: :win, player2: :lose}
      when hash[:player1] == :paper && hash[:player2] == :rock
        return {player1: :win, player2: :lose}

      #when player 2 wins
      when hash[:player1] == :scissors && hash[:player2] == :rock
        return {player1: :lose, player2: :win}
      when hash[:player1] == :paper && hash[:player2] == :scissors
        return {player1: :lose, player2: :win}
      when hash[:player1] == :rock && hash[:player2] == :paper
        return {player1: :lose, player2: :win}
    end
  end
end
