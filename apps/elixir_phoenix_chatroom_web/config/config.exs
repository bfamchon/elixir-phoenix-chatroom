# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elixir_phoenix_chatroom_web,
  namespace: ElixirPhoenixChatroomWeb,
  ecto_repos: [ElixirPhoenixChatroom.Repo]

# Configures the endpoint
config :elixir_phoenix_chatroom_web, ElixirPhoenixChatroomWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "GujYiizE/nS/f6rw8Uqs1ZWfTPejdkM/5frA1QW2NspGn8Kj/lRfiujZOTan4aUr",
  render_errors: [view: ElixirPhoenixChatroomWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElixirPhoenixChatroomWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :elixir_phoenix_chatroom_web, :generators,
  context_app: :elixir_phoenix_chatroom

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
