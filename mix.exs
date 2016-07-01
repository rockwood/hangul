defmodule Hangul.Mixfile do
  use Mix.Project

  def project do
    [app: :hangul,
     version: "0.1.0",
     elixir: "~> 1.3",
     escript: escript_config,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    []
  end

  defp escript_config do
    [ main_module: Hangul.CLI ]
  end
end
