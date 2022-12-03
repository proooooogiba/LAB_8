
require 'spec_helper'
require 'rails_helper'

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

    describe "GET #view with valid params" do
        it "returns http success" do
            get :view, params: {calc: {number: 100}}
            expect(response).to have_http_status(:success)
        end
    end

    describe "GET #view with invalid params" do
        it "returns http success" do
            get :view, params: {calc: {number: -2}}
            expect(response).to have_http_status(:success)
        end
    end

    describe "POST #input with invalid params" do
        it "returns http success" do
            post :input, params: {calc: {number: -2}}
            expect(response).to have_http_status(:success)
        end
    end

    describe "GET #show_database" do
        it "returns http success" do
            get :show_database
            expect(response).to have_http_status(:success)
        end
    end
end

