require "./lib/killer_rps.rb"

describe 'Test RPS functionality' do
  it "test for draw" do
    result = KillerRPS.play({player1: :rock, player2: :rock})
    expect(result).to eq({player1: :draw, player2: :draw})
  end

  it "test for player1 win" do
    result = KillerRPS.play({player1: :paper, player2: :rock})
    expect(result).to eq({player1: :win, player2: :lose})
  end

  it "test for player2 win" do
    result = KillerRPS.play({player1: :scissors, player2: :rock})
    expect(result).to eq({player1: :lose, player2: :win})
  end
end