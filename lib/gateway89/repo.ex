defmodule Gateway89.Repo do
  use Ecto.Repo,
    otp_app: :gateway89,
    adapter: Ecto.Adapters.Postgres
end
