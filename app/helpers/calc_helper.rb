module CalcHelper
  def automorf(n)
    arr = []
    (1..n).each do |i|
      arr.append(i) if i == i**2 % 10 || i == i**2 % 100 || i == i**2 % 1000
    end
    arr
  end
end
