class DiceController < ApplicationController
  def home
    render({ :template => "dice_templates/home"})
  end

  def dynamic_dice
    @num_dice = params.fetch("dice").to_i
    @num_sides = params.fetch("sides").to_i
    @rolls = []
    @num_dice.times do
      @rolls.push(rand(1..@num_sides))
    end
    render({ :template => "dice_templates/dynamic_dice"})
  end

end
