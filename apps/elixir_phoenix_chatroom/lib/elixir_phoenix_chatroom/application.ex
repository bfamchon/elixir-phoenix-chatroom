defmodule ElixirPhoenixChatroom.Application do
  @moduledoc """
  The ElixirPhoenixChatroom Application Service.

  The elixir_phoenix_chatroom system business domain lives in this application.

  Exposes API to clients such as the `ElixirPhoenixChatroomWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(ElixirPhoenixChatroom.Repo, []),
    ], strategy: :one_for_one, name: ElixirPhoenixChatroom.Supervisor)
  end
end
