module CalcHelper
    def automorf(n)
        arr = Array.new
        (1..n).each do |i|
            if (i == i**2 % 10 || i == i**2 % 100 || i == i**2 % 1000)
                arr.append(i)
            end
        end
        return arr
      end    
end
