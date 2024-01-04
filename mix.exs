defmodule ObanZombieRepro.MixProject do
  use Mix.Project

  def project do
    [
      app: :oban_zombie_repro,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: true,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {ObanZombieRepro.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:oban, "~> 2.15"},
      {:oban_pro, "~> 1.0.2", repo: "oban"},
      {:oban_web, "~> 2.10.0-rc.1", repo: "oban"},
    ]
  end
end
