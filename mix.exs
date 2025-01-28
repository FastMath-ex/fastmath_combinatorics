defmodule FastMathCombinatorics.MixProject do
  use Mix.Project

  def project do
    [
      app: :fastmath_combinatorics,
      description: "Fast combinatorics algorithms for Elixir by FastMath team",
      version: "0.1.0",
      elixir: "~> 1.17",
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
      {:memoize, "~> 1.4"}
    ]
  end
end
