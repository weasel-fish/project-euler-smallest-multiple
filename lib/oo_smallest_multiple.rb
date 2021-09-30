# Implement your object-oriented solution here!
class SmallestMultiple
    attr_accessor :num

    def initialize(num)
        @num = num
    end

    def lcm
        temp = 1

        (2..num).each do |n|
            temp *= n / gcd(temp, n)
        end

        temp
    end

    def gcd(a, b)
        while b > 0
            a %= b
            return b if a == 0
            b %= a
        end
        a
    end
end