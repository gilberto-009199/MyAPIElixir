# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :myAPIElixir,
  ecto_repos: [MyAPIElixir.Repo]

# Configures the endpoint
config :myAPIElixir, MyAPIElixirWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mI2HbI7+lzLD5ePbKqpRuQQAybG7mKi/gkcPrLa7JXLTyXkDHDCpFmbGGRT/l9ZW",
  render_errors: [view: MyAPIElixirWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: MyAPIElixir.PubSub,
  live_view: [signing_salt: "5RWfF58f"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
