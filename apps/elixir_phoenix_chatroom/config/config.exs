use Mix.Config

config :elixir_phoenix_chatroom, ecto_repos: [ElixirPhoenixChatroom.Repo]

import_config "#{Mix.env}.exs"
