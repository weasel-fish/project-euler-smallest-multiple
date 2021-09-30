# Implement your procedural solution here!
def smallest_multiple(num)
    temp = 1

    (2..num).each do |n|
        temp *= n / gcd(temp, n)
    end

    temp
end


# def gcd(a, b)
#     loop = 1
#     while a != b
#         puts loop
#         if a > b
#             a = a - b
#         else
#             b = b - a
#         end
#         loop += 1
#     end
#     a
# end

def gcd(a, b)
    while b > 0
        a %= b
        return b if a == 0
        b %= a
    end
    a
end