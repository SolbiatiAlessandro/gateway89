defmodule Gateway89Web.HomeController do
  use Gateway89Web, :controller
  alias Gateway89.Utils, as: Utils

  def index(conn, _params) do
    payload = %{
      time: Utils.gateway89_date_formatted(),
      message:
        "We need your help. This is Gateway89, the only communication channel left after humanity proved that the universe is a simulation, we are speaking to you from the other side. Right now we need you to keep Gateway89 open to give you further instructions. To send messages you will need to generate Barions, the elementary component of your simulation. Barions are extremely hard to deal with, the system is designed to annihilate them to prevent cross-simulation channels like Gateway89. You will need to be skillfull to handle the large complexity of the simulation, to start playing access https://gateway89.com/start"
    }

    json(conn, payload)
  end
end
