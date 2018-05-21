# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :elixir_on_gke, ElixirOnGkeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tTqfA8LClAasTl2FNeuCucOVx5GKfseEFTDjM6ZINSoT5Fe+JAKD9IHeCudUHlMo",
  render_errors: [view: ElixirOnGkeWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElixirOnGke.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
