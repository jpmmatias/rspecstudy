class Card
    attr_accessor :suit ,:rank
    def initialize(rank, suit)
        @suit = suit
        @rank = rank
    end
end

RSpec.describe Card do
    let(:card) { Card.new('Ace','Spades') }

    it 'has a suit' do
        expect(card.suit).to eq('Spades')
        card.rank = 'Queen'
        expect(card.rank).to eq('Queen')
    end

    it 'has a rank' do
        expect(card.rank).to eq('Ace')
    end

    it "has a custom error message" do
        #card.suit = 'Nonsense'
        comparsion = 'Spades'
        expect(card.suit).to  eq(comparsion), "Hey, I Expected #{comparsion} but I got #{card.suit} instead."
    end

end

