defmodule RpsWeb.AboutController do
  use RpsWeb, :controller

  def index(conn, _params) do
    render(conn, "about.html")
  end
end