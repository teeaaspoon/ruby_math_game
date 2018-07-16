class TurnManager
    @@whos_turn = 0
    def initialize(players)
        @players = players
    end
    def current_turn
        Turn.new(@players[@@whos_turn%2]).question_string
        puts "#{@players[0].name}: #{@players[0].lives}/3 vs #{@players[1].name}: #{@players[1].lives}/3"
        @@whos_turn += 1
    end
end