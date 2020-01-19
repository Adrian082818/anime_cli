class CLI 
  def start
    system('clear')
    
    puts "Welcome to the Anime CLI!"
    puts "Now accessing Anime List..."
    
    AnimeAPI.new.anime_list
    
    puts "Anime list loading complete..."
   menu 
  end 
  
  def menu
    user_input = nil 
    
    while user_input != "exit"
    puts "Enter '1' to get a list of Anime series"
    puts "Enter 'exit' to exit application"
    menu_option 
  end 
  end
  
  def sub_menu
    puts "Enter the number of the Anime you would like to know more about."
    puts "Enter 'exit' to exit program."
    sub_menu_option
  end 
  
  def menu_option 
    user_input = gets.strip 
    if user_input == "1"
     list_anime
     sub_menu_option
      # menu
     elsif user_input.downcase == "exit"
     goodbye 
    # elsif Anime.all == user_input.to_i > 1
    # puts invalid_input
  else
    invalid_input
    # menu 
    sub_menu
    end 
  end 
    

def sub_menu_option
  user_input = gets.strip 
  
  if user_input.to_i.between?(1, Anime.all.length)
    anime = Anime.all[user_input.to_i - 1]
    anime_attributes(anime)
    continue?
    elsif user_input.downcase == "exit"
    goodbye
    else
    invalid_input
    sub_menu
  end 
end 

def list_anime
  Anime.all.each.with_index(1) do |anime, i|
    puts "#{i}. #{anime.title}"
end 

def anime_attributes(anime)
  puts "Title: #{anime.title}"
  sleep 0.5
  puts "Type: #{anime.type}"
  sleep 0.5
  puts "Episodes: #{anime.episodes}"
  sleep 0.5
  puts "Rated: #{anime.rated}"
  sleep 0.5
  puts "Score: #{anime.score}"
  
end 

def continue?
  puts "Enter '1' for menu, enter '2' to select another Anime series or enter 'exit' to exit program."
  
  user_input = gets.strip 
  if user_input == "1"
    menu 
    menu_option
    elsif user_input == "2"
    list_anime
    sub_menu_option
    elsif user_input == "exit"
   goodbye
  elsif invalid_input
# else 
#     goodbye
end 
end 
  
  def goodbye
    puts "Thank you for using."
    exit 
  end 
  
  def invalid_input
    puts "I'm not familiar with this Anime Series, try another number."
end 
  
end 
end 