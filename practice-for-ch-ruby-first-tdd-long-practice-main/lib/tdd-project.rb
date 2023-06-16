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

end