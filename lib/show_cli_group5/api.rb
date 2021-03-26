class API 
    def self.get_data(input)
       results = RestClient.get("http://api.tvmaze.com/search/shows?q=#{input}")
       shows = JSON.parse(results)
       shows.each do |show|
        new_show = show["show"]
        # :name, :genres, :language, :rating
        Show.new(new_show["name"], new_show["genres"], new_show["language"], new_show["rating"])
       end
       binding.pry
    end
end