defmodule RpsWeb.Plugs.MyMove do
  import Plug.Conn

  @mymoves ["rock", "paper", "scissors"]

  def numToOption(num) do
    Enum.at(@mymoves, num)
  end

  def init(default) do 
    Enum.random(0..2)
    |> numToOption()
  end

  def call(conn, default) do
    assign(conn, :mymove, default)
  end
end