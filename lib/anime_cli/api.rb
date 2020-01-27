class AnimeCli::AnimeAPI
def anime_list

  anime_info = RestClient.get("https://api.jikan.moe/v3/search/anime?q=anime&limit=16")
  anime_array = JSON.parse(anime_info.body)["results"]
  
  anime_array.each do |anime|
    AnimeCli::Anime.new(anime)
    end 
  end 
end 
 