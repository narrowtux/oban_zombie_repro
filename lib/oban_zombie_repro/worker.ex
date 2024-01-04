defmodule ObanZombieRepro.Worker do
  use Oban.Pro.Worker

  def new() do
    new(%{})
  end

  def process(_job) do
    {:ok, pid} = Agent.start_link(fn -> :ok end, name: __MODULE__.Agent)
    throw "crash!"
    Agent.stop(pid)
    :ok
  end
end
