class PassLineController < ApplicationController

    def pass_line
      session[:game_over] = false
      session[:point] = nil
      redirect_to roll_dice_path, notice: 'You are playing the pass line.'
    end
  
    # Existing actions

  
end
