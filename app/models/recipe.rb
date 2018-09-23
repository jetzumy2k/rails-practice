require 'httparty'

class Recipe
  include HTTParty

  base_uri "http://food2fork.com/api"
  default_params key: "4da1e21b862f267826233a99023c97f9"
  format :json

  def self.for (keyword)
    get("/search", query: {q: keyword})["recipes"]
  end
end