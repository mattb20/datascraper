require 'HTTParty'
require 'Nokogiri'
require 'Pry'
require 'csv'

football_league_tables = ['http://www.skysports.com/premier-league-table', 'http://www.skysports.com/championship-table',
'http://www.skysports.com/league-1-table', 'http://www.skysports.com/league-2-table']

teams = [];
page = Nokogiri::HTML(HTTParty.get('http://www.skysports.com/league-1-table'));
team_categories = page.xpath("//thead").text.split("\n").reject(&:empty?);

binding.pry

CSV.open("league1.csv", "a+"){|csv| csv << table}


# pages = football_league_tables.each{|league_table| HTTParty.get(league_table)}
