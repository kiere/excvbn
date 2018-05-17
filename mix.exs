defmodule Excvbn.MixProject do
  use Mix.Project

  def project do
    [
      app: :excvbn,
      version: "0.1.0",
      elixir: "~> 1.4",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.18.3"},
      {:earmark, "~> 1.2"},
      {:execjs, git: "https://github.com/devinus/execjs.git", branch: "master"}
    ]
  end
end
