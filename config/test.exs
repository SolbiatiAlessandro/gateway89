use Mix.Config

# Configure your database
config :gateway89, Gateway89.Repo,
  username: "postgres",
  password: "postgres",
  database: "gateway89_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :gateway89, Gateway89Web.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
