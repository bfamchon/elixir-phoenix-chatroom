use Mix.Config

# Configure your database
config :elixir_phoenix_chatroom, ElixirPhoenixChatroom.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "elixir_phoenix_chatroom_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
