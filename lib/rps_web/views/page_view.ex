defmodule RpsWeb.PageView do
  use RpsWeb, :view

  def explainer(yourmove, mymove) do
    pair = [yourmove, mymove]

    cond do
      Enum.all?(["paper", "rock"], fn x -> x in pair end) -> "Paper covers rock. "
      Enum.all?(["rock", "scissors"], fn x -> x in pair end) -> "Rock breaks scissors. "
      Enum.all?(["scissors", "paper"], fn x -> x in pair end) -> "Scissors cuts paper. "
      yourmove == mymove -> ""
      true -> "Not sure how to explain this one. "
    end    
  end

  def winner(yourmove, mymove) do
        
    cond do
      yourmove == mymove -> "Draw!"
      yourmove == "rock" and mymove == "paper" -> "I win!"
      yourmove == "rock" and mymove == "scissors" -> "You win!"
      yourmove == "scissors" and mymove == "paper" -> "You win!"
      yourmove == "scissors" and mymove == "rock" -> "I win!"
      yourmove == "paper" and mymove == "rock" -> "You win!"
      yourmove == "paper" and mymove == "scissors" -> "I win!"
      true -> "I don't know who won."
    end
  end
end
