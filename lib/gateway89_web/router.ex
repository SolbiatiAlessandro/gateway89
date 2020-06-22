defmodule Gateway89Web.Router do
  use Gateway89Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Gateway89Web do
    pipe_through :api

    resources("/players", PlayerController)
	get "/", HomeController, :index
	get "/start", HomeController, :start_player
  end

  # Other scopes may use custom stacks.
  # scope "/api", Gateway89Web do
  #   pipe_through :api
  # end
end
