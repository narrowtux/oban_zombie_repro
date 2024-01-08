ObanZombieRepro.Worker.new()
|> Oban.Pro.Relay.async()
|> Oban.Pro.Relay.await()
|> IO.inspect(label: "Worker result")

pid = Process.whereis(ObanZombieRepro.Worker.Agent)
unless is_nil(pid) or not Process.alive?(pid) do
  IO.puts "Agent is still alive: #{inspect pid}"
else
  IO.puts "Agent is not running :)"
end
