defmodule ObanZombieRepro.Application do
  def start(_type, _args) do
    children = [
      ObanZombieRepro.Repo,
      {Oban, Application.fetch_env!(:oban_zombie_repro, Oban)}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: ObanZombieRepro.Supervisor)
  end
end
