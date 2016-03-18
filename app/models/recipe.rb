class Recipe
	include HTTParty

	host_port = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
	base_uri "http://#{host_port}/api"
	default_params key: ENV['FOOD2FORK_KEY']
	format :'json'

	def self.for(keyword)
		get("/search", query: {q: keyword})['recipes']
	end
end
