require 'HTTParty'
require 'Nokogiri'
require 'Pry'
require 'csv'

page = HTTParty.get('https://newyork.craigslist.org/search/pet?s=0');
