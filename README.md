# ObanZombieRepro

How to reproduce:

```
mix deps.get
mix ecto.create
mix ecto.migrate

# execute the test
mix run test.exs
```

This is printed when running: 
```
Worker result: {:error, %Oban.CrashError{message: "** (throw) \"crash!\"", reason: "crash!"}}
Agent is still alive: #PID<0.316.0>
```

The second line should not appear.