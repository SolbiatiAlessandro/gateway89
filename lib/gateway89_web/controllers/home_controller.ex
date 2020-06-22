defmodule Gateway89Web.HomeController do
  use Gateway89Web, :controller

  import UUID

  alias Gateway89.Accounts
  alias Gateway89.Accounts.Player

  def index(conn, _params) do
    intro_message =
      "We need your help. This is Gateway89, the only communication channel left after humanity proved that the universe is a simulation: we are speaking to you from the other side and we need your help to keep Gateway89 open. To send messages you will need to generate Barions, the elementary component of your simulation. Barions are extremely hard to deal with, the simulation is designed to annihilate them to prevent cross-simulation channels like Gateway89. You will need to be skillfull to handle the large complexity of the simulation, to start playing access http://www.gateway89.com/start"

    render(conn, "message.json", message: intro_message)
  end

  def start_player(conn, _params) do
    <<short_id::binary-size(4)>> <> full_id = UUID.uuid4()
    player_name = "player-#{short_id}"

    player_params = %{
      name: player_name,
      barions: 10
    }

    with {:ok, %Player{} = player} <- Accounts.create_player(player_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.player_path(conn, :show, player))
      |> render("message.json",
        message:
          "Communicating costs Barions, we just sent you 10. You can check how many you have anytime at http://www.gateway89.com/player/#{
            player.id
          }"
      )
    end
  end
end
