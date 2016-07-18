require 'nokogiri'
require 'open-uri'

@username = ARGV[0]
@url = "https://boardgamegeek.com/collection/user/#{@username}?own=1&subtype=boardgame&ff=1"
@page = Nokogiri::HTML(open(@url))
@css_dom_path = 'td tr div a'

def print_game_names(board_game_type)
  matching_games = find_games_of_type(board_game_type)
  puts matching_games.size()
  matching_games.each { |game| puts game.text + " " }
end

def find_games_of_type(board_game_type)
  @page.css(@css_dom_path).select do |game|
    game['href'] =~ /\/#{Regexp.escape(board_game_type)}\//
  end
end

puts "#{@username}'s GAMES"
puts "-------------------------------------------------"
print_game_names("boardgame")
puts #newline
puts "EXPANSIONS"
puts "-------------------------------------------------"
print_game_names("boardgameexpansion")
