class HomeController < ApplicationController
  require 'open-uri'
  require 'json'

  def index
    doc = JSON.load(open("https://newsapi.org/v2/top-headlines?country=kr&apiKey=#{ENV["api_key"]}"))

    @articles = doc["articles"]
  end
end
