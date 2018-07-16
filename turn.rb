class Turn
    def initialize(player)
        @player = player
        @question = MathQuestion.new
        @user_answer = nil
    end
    def question_string
        puts "----- NEW TURN -----"
        puts "#{@player.name}: What does #{@question.num1} plus #{@question.num2} equal?"
        print "> "
        @user_answer = $stdin.gets.chomp.to_i
        check
    end
    def check
        if @user_answer == @question.answer
            puts "#{@player.name}:  YES! You are correct"
            return true
        else
            puts "#{@player.name}: Seriously? No!"
            @player.lose_life
            return false
        end
    end
end