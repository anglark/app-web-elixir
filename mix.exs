defmodule MiProyecto.MixProject do
  use Mix.Project

  def project do
    [
      app: :mi_proyecto,
      version: "0.1.0",
      elixir: "~> 1.19",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ],
      docs: [
        main: "readme",
        extras: ["README.md"]
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {MiProyecto.Application, []}
    ]
  end

  defp deps do
    [
      # Dependencias de desarrollo y test
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.3", only: [:dev], runtime: false},
      {:ex_doc, "~> 0.30", only: :dev, runtime: false},
      
      # Dependencias de test
      {:excoveralls, "~> 0.10", only: :test},
      
      # Dependencias de producción
      # {:ecto_sql, "~> 3.0"},
      # {:postgrex, ">= 0.0.0"},
      
      # Si necesitas HTTP client
      # {:httpoison, "~> 2.1"},
      
      # Si necesitas JSON
      # {:jason, "~> 1.4"}
    ]
  end
end
