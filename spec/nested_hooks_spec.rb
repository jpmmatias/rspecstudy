RSpec.describe 'nested hooks' do
    before(:context) do
        puts 'Before context'
    end

    before(:example) do
        puts 'before example'
    end

    it "does basic math" do
        expect(2-2).to eq(0)
    end

    context 'with a condition' do
        before(:context) do
            puts 'INNER before context'
        end

        before(:example) do
            puts 'INNER before example'
        end

        it "does basic math" do
            expect(2-4).to eq(-2)
        end
        it "does basic math" do
            expect(2-6).to eq(-4)
        end
    end


end