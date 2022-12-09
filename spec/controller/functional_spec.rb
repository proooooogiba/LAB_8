require 'rss'
require 'open-uri'
require 'spec_helper'
require 'rails_helper'

RSpec.describe CalcController, type: :controller do
    # describe 'Check format of RSS-request' do
    #     url = 'https://www.ruby-lang.org/en/feeds/news.rss'
    #     URI.open(url) do |rss|
    #         feed = RSS::Parser.parse(rss)
    #         puts "Title: #{feed.channel.title}"
    #         feed.items.each do |item|
    #         puts "Item: #{item.title}"
    #         end
    #     end
    # end
    it 'should be xml' do
        get 'view', params: { num: '11', format: :xml }
        expect(response.content_type).to eq('application/xml; charset=utf-8')
      end

    # it "returns an RSS feed" do
    #     url = 'https://www.ruby-lang.org/en/feeds/news.rss'
    #     URI.open(url) do |rss|
    #         feed = RSS::Parser.parse(rss)
    #         puts "Title: #{feed.channel.title}"
    #         feed.items.each do |item|
    #         puts "Item: #{item.title}"
    #         end
    #     end
        # get :view, :format => "rss"
        # response.should be_success
        # response.should render_template("posts/index")
        # response.content_type.should eq("application/rss+xml")
    #   end
end
