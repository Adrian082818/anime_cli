class AnimeAPI
   
    ORIGINAL_URL = "https://jikan.moe/?ref=public-apis"
  
def anime_list

  anime_info = RestClient.get("https://api.jikan.moe/v3/search/anime")
# ?q=anime&limit=16
  anime_array = JSON.parse(anime_info.body)["results"]
  
  animes.each do |anime|
  Anime.new(anime)
  end 
end 

end 
 