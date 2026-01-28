defmodule MiProyecto.Application do
  @moduledoc false
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Aquí puedes agregar tus supervisores, por ejemplo:
      # {MiProyecto.Repo, []},
      # {MiProyectoWeb.Endpoint, []}
    ]

    opts = [strategy: :one_for_one, name: MiProyecto.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
