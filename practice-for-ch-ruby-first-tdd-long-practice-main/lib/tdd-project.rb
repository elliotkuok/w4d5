class Array
    def my_uniq
        results = []
        self.each {|ele| results << ele if !results.include?(ele)}
        results
    end

    def two_sum
        results = []
        self.each_with_index do |ele, i|
            self.each_with_index do |ele2, i2|
                if i2 > i && ele + ele2 == 0
                    results << [ele, ele2]
                end
            end
        end
        results
    end

    def my_transpose
        transposed = []
        self.each_with_index do |_, i|
            row = []
            self.each_with_index do |_, i2|
                row << self[i2][i]
            end
            transposed << row
        end
        transposed
    end

    def stock_picker
        return [] if self.length < 2
        max_profit = 0
        buy_date = 0
        sell_date = 0
        
        self.each_with_index do |num1, idx1|
            self.each_with_index do |num2, idx2|
                profit = num2 - num1
                if profit > max_profit && idx2 > idx1
                    max_profit = profit
                    buy_date = idx1
                    sell_date = idx2
                end
            end
        end
        return [] if max_profit == 0 
        [buy_date, sell_date]
    end











end