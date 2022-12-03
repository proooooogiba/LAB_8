# frozen_string_literal: true

module CalcHelper
  def automorf(n)
    arr = []
    (1..n).each { |i| arr.append(i) if (i**2).to_s.end_with?(i.to_s) }
    arr
  end
end
