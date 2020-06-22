defmodule Gateway89Web.HomeView do
  use Gateway89Web, :view
  alias Gateway89.Utils, as: Utils
  alias Gateway89Web.PlayerView

  def render("message.json", %{message: message}) do
    %{
      time: Utils.gateway89_date_formatted(),
      message: message
    }
  end
end
