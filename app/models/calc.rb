class Calc < ApplicationRecord
    # create for compare creation of new Calc and existing Calc in rspec test
    def ==(o)
        number == o.number
      end
    
    def hash
        number.hash
    end
end
