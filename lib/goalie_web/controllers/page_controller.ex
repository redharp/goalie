defmodule GoalieWeb.PageController do
  use GoalieWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
