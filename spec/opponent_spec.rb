require 'opponent'

describe Opponent do
  subject(:comp) { Opponent.new }

  describe "#option" do
    it 'random option can be selected' do
      choice = comp.option.sample
      expect(comp.option).to include(choice)
    end
  end
end
