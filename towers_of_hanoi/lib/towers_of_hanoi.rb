class TOH
    attr_reader :stacks
    def initialize
        @stacks = Array.new(3) {[]}
        @stacks[0] = [1, 2, 3, 4]
    end

    def move(take,put)
        disc = stacks[take].pop
        stacks[put] << disc

    end








end
