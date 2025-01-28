# FastMath.Combinatorics

`FastMath.Combinatorics` provides fast and efficient combinatorics functions for Elixir, including implementations for:

- Factorials
- Permutations
- Combinations
- Variations
- Efficient generation of combinations from a list

The library is optimized for performance, using iterative methods, symmetry, and other techniques to minimize unnecessary computations.

## Features

- **Factorials**: Compute \( n! \) efficiently using permutations.
- **Permutations**: Compute \( P(n, r) = n! / (n-r)! \) using an iterative approach.
- **Combinations**: Compute \( C(n, r) = n! / (r!(n-r)!) \) directly without full factorials.
- **Variations**: Compute \( V(n, r) = n^r \).
- **Generate Combinations**: Efficiently generate all \( r \)-element combinations from a list, leveraging symmetry for optimization.

## Installation

Add `fastmath_combinatorics` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:fastmath_combinatorics, "~> 0.1.0"}
  ]
end
```

Then run:

```bash
mix deps.get
```

## Documentation

Documentation can be generated using [ExDoc](https://github.com/elixir-lang/ex_doc) and is available at [HexDocs](https://hexdocs.pm).

To generate the docs locally, run:

```bash
mix docs
```

Once published, the documentation will be available at [HexDocs](https://hexdocs.pm/fastmath_combinatorics).

## Examples

### Factorial
Calculate the factorial of a number:
```elixir
iex> FastMath.Combinatorics.factorial(5)
120
```

### Permutations
Calculate the number of permutations \( P(n, r) \):
```elixir
iex> FastMath.Combinatorics.permutations(5, 3)
60
```

### Combinations
Calculate the number of combinations \( C(n, r) \):
```elixir
iex> FastMath.Combinatorics.combinations(5, 3)
10
```

### Variations
Calculate the number of variations \( V(n, r) \):
```elixir
iex> FastMath.Combinatorics.variations(2, 3)
8
```

### Generate Combinations
Generate all \( r \)-element combinations from a list:
```elixir
iex> FastMath.Combinatorics.generate_combinations([1, 2, 3, 4], 3)
[[1, 2, 3], [1, 2, 4], [1, 3, 4], [2, 3, 4]]
```

## Contributing

Contributions are welcome! If you have ideas for improvements or additional functionality, feel free to submit a pull request or open an issue.

## License

This project is licensed under the [MIT License](LICENSE).
