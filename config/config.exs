import Config

config :oban_zombie_repro, ecto_repos: [ObanZombieRepro.Repo]

config :oban_zombie_repro, ObanZombieRepro.Repo,
  adapter: Ecto.Adapters.Postgres,
  host: "localhost",
  database: "oban_zombie_repro_dev",
  username: "postgres",
  password: "postgres"

config :oban_zombie_repro, Oban,
  engine: Oban.Pro.Engines.Smart,
  repo: ObanZombieRepro.Repo,
  plugins: [Oban.Plugins.Pruner],
  queues: [default: 10]
