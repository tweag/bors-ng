defmodule BorsNG.GitHub.Mixfile do
  use Mix.Project

  def project do
    [
      app: :bors_github,
      version: "0.0.4",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  def application do
    [
      mod: {BorsNG.GitHub.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Specifies your project dependencies.
  defp deps do
    [
      {:ex_link_header, "~> 0.0.5"},
      {:poison, "~> 2.0"},
      {:oauth2, "~> 0.9.1"},
      {:httpoison, "~> 0.11.0"},
      {:joken, "~> 1.4"},
      {:confex, "~> 3.3.1"},
    ]
  end
end
