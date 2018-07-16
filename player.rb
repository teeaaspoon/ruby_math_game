class Player
    @@player_count = 0
    attr_accessor :lives
    attr_reader :name
    def initialize
        @@player_count += 1
        @name = what_is_your_name
        @lives = 3
    end
    def what_is_your_name
        puts "Player #{@@player_count} What is your name?"
        print = "> "
        $stdin.gets.chomp
    end
    def lose_life
        self.lives = self.lives - 1
    end
end