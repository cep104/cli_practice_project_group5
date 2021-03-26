class CLI

    def start
        puts "Welcome to TV Maze look up what is your name?"
       input = gets_input
       greeting(input)
    end

    def gets_input
        gets.strip
    end

    def greeting(input)
        puts "Sup #{input}, thanks for joining!, Let's search for some tv shows enter a keyword or show to get started"
        new_input = gets_input
        API.get_data(new_input)
    end
end