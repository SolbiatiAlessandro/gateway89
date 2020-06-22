defmodule Gateway89Web.PageController do
  use Gateway89Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
