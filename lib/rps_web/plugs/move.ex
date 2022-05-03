defmodule RpsWeb.Plugs.Move do
  import Plug.Conn

  @moves ["rock", "paper", "scissors"]

  def init(default), do: default

  def call(%Plug.Conn{params: %{"move" => move}} = conn, _default) when move in @moves do
    assign(conn, :move, move)
  end

  def call(conn, default) do
    assign(conn, :move, default)
  end
end