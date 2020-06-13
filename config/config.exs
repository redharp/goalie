# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :goalie,
  ecto_repos: [Goalie.Repo]

# Configures the endpoint
config :goalie, GoalieWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "X2uuupprF4TRwhNINJF3FBdWzN3W9Ly+GqxodX6TuCPXPaqoi+gDmpkvwS0qATRi",
  render_errors: [view: GoalieWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Goalie.PubSub,
  live_view: [signing_salt: "mR61u5qh"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
