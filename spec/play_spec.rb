require 'play'

describe Play do
  describe "#option" do
    it 'random option can be selected' do
      choice = subject.option.sample
      expect(subject.option).to include(choice)
    end
  end
end
