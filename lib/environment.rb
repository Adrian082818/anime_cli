require 'rest-client'
require 'json'
require 'pry'
require 'uri'


require_relative "./anime_cli/version"
require_relative './anime_cli/anime'
require_relative './anime_cli/api'
require_relative './anime_cli/cli'

module AnimeCli
  class Error < StandardError; end
  # Your code goes here...
end
