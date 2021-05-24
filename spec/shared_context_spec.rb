RSpec.shared_context 'common' do
    before do
        @foods =[]
    end

    def some_helper_method
        5
    end

    let(:some_variable) { [1,2,3] }

end

RSpec.describe "first example group" do
        include_context 'common'

        it "can use outside instance variables" do
            expect(@foods.length).to eq(0)
            @foods = 'sushi'
            expect(@foods.length).to eq(5)
        end

end

RSpec.describe "second example in different file" do
    include_context 'common'

    it "can use shared let " do
        expect(some_variable).to eq([1,2,3])
    end

end
