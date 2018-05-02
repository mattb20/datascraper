require 'HTTParty'
require 'Nokogiri'
require 'Pry'
require 'csv'

page = HTTParty.get('https://newyork.craigslist.org/search/pet?s=0');
parse_page = Nokogiri::HTML(page).css('.content').css('.rows').css('.hdrlnk');

pets_array = parse_page.map{|advert| advert.text};
CSV.open("pets.csv", "a+"){|csv| csv << pets_array}
