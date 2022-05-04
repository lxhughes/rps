defmodule RpsWeb.Plugs.YourMove do
  import Plug.Conn

  @moves ["rock", "paper", "scissors"]

  def init(default), do: default

  def call(%Plug.Conn{params: %{"yourmove" => yourmove}} = conn, _default) when yourmove in @moves do
    assign(conn, :yourmove, yourmove)
  end

  def call(conn, default) do
    assign(conn, :yourmove, default)
  end
end