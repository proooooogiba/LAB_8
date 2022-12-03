
require_relative 'spec_helper'
require_relative 'rails_helper'

RSpec.describe CalcHelper do
    include CalcHelper
    describe "result of calculations" do
        it "should get correct result" do
            expect(automorf(1)).to eq([1])
            expect(automorf(100)).to eq([1, 5, 6, 25, 76])
            expect(automorf(50)).to eq([1, 5, 6, 25])
            expect(automorf(-2)).to eq([])
            expect(automorf(0)).to eq([])
        end
    end
end

RSpec.describe CalcController, type: :controller do
    describe "GET #input" do
        it "returns http success" do
            get :input
            expect(response).to have_http_status(:success)
        end
    end

    describe "GET #view" do
        it "returns http success" do
            get :view
            expect(response).to have_http_status(:success)
        end
    end
end


RSpec.describe Calc, type: :model do
    describe "Manipulating with model Calc" do
        it "create Calc and check valid" do
            calc = Calc.create
            expect(calc).to be_valid
        end

        it "add new Calc and check count" do
            calc = Calc.create
            expect(Calc.count).to eq(1)
        end

        it "create new Cals and save it" do
            expect(Calc.create.save).to be_truthy
        end

        it "fill Calc with data and check it" do
            calc = Calc.create(:number => 1, :ordinary => "1 5", :squares => "1 25")
            expect(calc).to have_attributes(:number => 1, :ordinary => "1 5", :squares => "1 25")
        end

        it "create new Calc and find it by number" do
            calc = Calc.create(:number => 1)
            expect(Calc.find_by_number(calc.number)).to eq(calc)
        end

    end
end
