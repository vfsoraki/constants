defmodule Constants.Mixfile do
  use Mix.Project

  def project do
    [
      app: :constants,
      version: "0.1.0",
      elixir: "~> 1.2",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      deps: deps(),
      name: "Constants",
      source_url: "https://github.com/vfsoraki/constants"
    ]
  end

  def application do
    []
  end

  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev}]
  end

  defp description do
  """
  A library to help your easily define constants.
  """
  end

  defp package do
    [
      name: :constants,
      files: ["lib", "mix.exs", "README.md",],
      maintainers: ["Vahid Fazlollahzade"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/vfsoraki/constants"}
    ]
  end

end
