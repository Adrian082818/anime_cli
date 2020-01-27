class AnimeCli::CLI 
  def start
    system('clear')
    
    puts "Looking for something to watch?"
    puts "Now entering the world of Anime..."
    
    AnimeCli::AnimeAPI.new.anime_list
    menu 
  end 
  
  def menu
    puts ""
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
    else
        invalid_input 
      menu
    end 
  end 
    

  def sub_menu_option
    user_input = gets.strip 
  
    if user_input.to_i.between?(1, AnimeCli::Anime.all.length)
      anime = AnimeCli::Anime.all[user_input.to_i - 1]
      anime_attributes(anime)
      puts "--------------------------------------------------------------------------------"
      continue
    elsif user_input.downcase == "exit"
      goodbye
    else
      invalid_input
    end 
  end 

  def list_anime
    AnimeCli::Anime.all.each.with_index(1) do |anime, i|
      puts "#{i}. #{anime.title}"
    end 
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

  def continue
  puts "Enter '1' for menu." 
  puts "enter '2' to select another Anime series." 
  puts "enter 'exit' to exit program."
  
  user_input = gets.strip 
  if user_input == "1"
    menu 
    menu_option
    elsif user_input == "2"
    list_anime
    sub_menu_option
    elsif user_input == "exit"
   goodbye
    else
    invalid_input
    # else 
    # goodbye
    end 
  end 
  
  def goodbye
    puts "See ya later Space Cowboy..."
    exit 
  end 
  
  def invalid_input
    puts "I'm not familiar with this Anime Series, try another number."
  end 
   
end 