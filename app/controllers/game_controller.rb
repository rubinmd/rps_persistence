class GameController < ApplicationController
  # This action is for the bare domain. You can ignore it.
  def home
    redirect_to("/mockup.html")
  end

  # Your code goes below.
  def rps
    @user_move=params[:the_move]
    @computer_move=["rock","paper","scissors"].sample

    if @user_move=="rock"
      if @computer_move==@user_move
        @result="tied"
      end
      if @computer_move=="paper"
        @result="lose"
      end
      if @computer_move=="scissors"
        @result="win"
      end
    end
    if @user_move=="paper"
      if @computer_move==@user_move
        @result="tied"
      end
      if @computer_move=="rock"
        @result="win"
      end
      if @computer_move=="scissors"
        @result="lose"
      end
    end
    if @user_move=="scissors"
      if @computer_move==@user_move
        @result="tied"
      end
      if @computer_move=="rock"
        @result="lose"
      end
      if @computer_move=="paper"
        @result="win"
      end
    end
  end
end
