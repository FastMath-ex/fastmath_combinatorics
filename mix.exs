defmodule FastMathCombinatorics.MixProject do
  use Mix.Project

  def project do
    [
      app: :fastmath_combinatorics,
      description: "Fast combinatorics algorithms for Elixir by FastMath team",
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      source_url: "https://github.com/FastMath-ex/fastmath_combinatorics",
      docs: [
        # The main page in the generated documentation
        main: "readme",
        format: "html",
        extras: ["README.md"]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Specify which files are to be included in the final package
  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/FastMath-ex/fastmath_combinatorics"},
      files: [
        "lib",
        "mix.exs",
        "README.md"
      ]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.25", only: :dev, runtime: false}
    ]
  end
end
