require 'nokogiri'
require 'open-uri'

@username = ARGV[0]
@url = "https://boardgamegeek.com/collection/user/#{@username}?own=1&subtype=boardgame&ff=1"
@page = Nokogiri::HTML(open(@url))
@css_dom_path = 'td tr div a'

def print_game_name(name)
  @page.css(@css_dom_path).each do |game|
    if game['href'] =~ /\/#{Regexp.escape(name)}\// 
      puts game.text + " "
    end
  end
end

puts "#{@username}'s GAMES"
puts "-------------------------------------------------"
print_game_name("boardgame")
puts #newline
puts "EXPANSIONS"
puts "-------------------------------------------------"
print_game_name("boardgameexpansion")
