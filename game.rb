class Game 
    def initialize
        @player1 = Player.new
        @player2 = Player.new
        @turn_manager = TurnManager.new([@player1, @player2])
    end
    def start_game
        while @player1.lives > 0 && @player2.lives > 0 do
            @turn_manager.current_turn
            if @player1.lives > 0 && @player2.lives > 0
                @turn_manager.next_turn
            end
        end
        if @player1.lives > @player2.lives
            puts "#{@player1.name} wins with a score of #{@player1.lives}/3"  
        else puts "#{@player2.name} wins with a score of #{@player2.lives}/3"           
        end
        puts "----- GAME OVER -----"
        puts "Good bye!"
    end
end
