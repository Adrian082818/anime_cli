class API

    ORIGINAL_URL = "https://jikan.moe/?ref=public-apis"
  
def get_anime_characters

  character_info = RestClient.get("https://api.jikan.moe/v3/character/id/request")

  character_array = JSON.parse(character_info.body)["results"]

  character_info.each do |character|
  Character.new(character)
  end 
end 

end 