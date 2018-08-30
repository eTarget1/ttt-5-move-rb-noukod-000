require_relative "../lib/move.rb"

describe './bin/move executing a CLI Application' do
  it 'defines a board variable' do
    allow($stdout).to receive(:puts)
    allow(self).to receive(:gets).and_return("1")
    allow(self).to receive(:move)

    board = get_variable_from_file("./bin/move", "board")

    expect(board).to eq([" ", " ", " ", " ", " ", " ", " ", " ", " "])
  end


end
