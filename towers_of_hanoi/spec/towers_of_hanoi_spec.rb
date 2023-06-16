require 'towers_of_hanoi'

describe TOH do
    describe '#move' do
        context 'if the move is valid' do
            let(:game) {TOH.new}
            it 'moves the disc from one stack to another' do
            game.move(1,2)
                expect(game.stacks).to eq([[1, 2, 3][4][]])
            end
        end
        context 'if the move is invalid' do 
            it 'the disc postition doesn't change'
        end
        
    end
end