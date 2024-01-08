defmodule ObanZombieRepro.Worker do
  use Oban.Pro.Worker
  require Logger

  def new() do
    new(%{})
  end

  def process(_job) do
    Logger.info("inside process/1")
    Task.async(fn ->
      Logger.info("inside task fun")
      {:ok, pid} = Agent.start_link(fn -> :ok end, name: __MODULE__.Agent)
      throw :crash
      Agent.stop(pid)
    end)
    |> Task.await()
    Logger.info("After Task.await/1")
  end
end
