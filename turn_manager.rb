class TurnManager
    def initialize(players)
        @players = players
    end
    def current_turn
        Turn.new(@players[0]).question_string
        puts "#{@players[0].name}: #{@players[0].lives}/3 vs #{@players[1].name}: #{@players[1].lives}/3"
    end
    def next_turn
        Turn.new(@players[1]).question_string
        puts "#{@players[0].name}: #{@players[0].lives}/3 vs #{@players[1].name}: #{@players[1].lives}/3"
    end
end