defmodule PokeBattleWeb.PageController do
  use PokeBattleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
