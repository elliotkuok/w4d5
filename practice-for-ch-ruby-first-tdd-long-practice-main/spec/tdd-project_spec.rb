require "tdd-project"

describe Array do
    subject(:arr) {Array.new([1, 2, 1, 3, -3])} 
    describe '#my_uniq' do
        it 'removes duplicates from an array and returns the unique elements in the order in which they first appeared' do
           expect(arr.my_uniq).to eq([1, 2, 3, -3])
        end
    end

    describe '#two_sum' do
        it 'finds all pairs of positions where the elements at those positions sum to zero' do
           expect(arr.two_sum).to eq([[3, -3]])
        end
    end

    describe 'my_transpose' do
        it 'should flip rows and columns' do
            arr_1 = [
                ["a", "b", "c"],
                ["d", "e", "f"],
                ["g", "h", "i"]
              ]
            expected_1 = [
                ["a", "d", "g"],
                ["b", "e", "h"],
                ["c", "f", "i"]
              ]
              expect(arr_1.my_transpose).to eq(expected_1)
        end

        it "shouldn't use the built-in transpose method" do
            expect(arr_1.my_transpose).to_not receive(:transpose)
            expect {arr_1.my_transpose}.to raise_error("don't be a cheater!")
        end
    end


end