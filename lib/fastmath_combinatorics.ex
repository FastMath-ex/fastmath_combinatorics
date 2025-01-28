defmodule FastMath.Combinatorics do
  @moduledoc """
  `FastMath.Combinatorics` provides fast and efficient combinatorics functions.

  It includes implementations for factorials, permutations, combinations, and
  other fundamental combinatorics operations.
  """

  @doc """
  Calculates the factorial of `n`. Uses `permutations`

  ## Parameters
  - `n` - A non-negative integer.

  ## Returns
  The factorial of `n`.

  ## Examples
      iex> FastMath.Combinatorics.factorial(5)
      120
  """
  def factorial(n), do: permutations(n, n)

  @doc """
  Calculates the number of permutations \( P(n, r) = n! / (n-r)! \) using an iterative approach.

  This method avoids the computation of full factorials by directly calculating
  the product of the necessary range \( n \cdot (n-1) \cdot ... \cdot (n-r+1) \),
  making it more efficient for larger values of \( n \) and \( r \).

  ## Parameters
  - `n` - The total number of items (integer).
  - `r` - The number of selected items (integer, \( r \leq n \)).

  ## Returns
  The number of permutations as an integer.

  ## Examples
      iex> FastMath.Combinatorics.permutations(5, 3)
      60

      iex> FastMath.Combinatorics.permutations(6, 2)
      30
  """
  def permutations(_, 0), do: 1

  def permutations(n, r) when r <= n and r >= 0 do
    Enum.reduce(n..(n - r + 1), 1, &(&1 * &2))
  end

  @doc """
  Calculates combinations \( C(n, r) = \frac{n!}{r!(n-r)!} \).

  ## Parameters
  - `n` - An integer representing the total number of items.
  - `r` - An integer representing the number of selected items, \( r \leq n \).

  ## Returns
  The number of combinations.

  ## Examples
      iex> FastMath.Combinatorics.combinations(5, 3)
      10
  """
  def combinations(_, 0), do: 1

  def combinations(n, r) when n >= r and r >= 1 do
    (n - r + 1)..n
    |> Enum.with_index(1)
    |> Enum.reduce(1, fn {val, key}, accum -> (val * accum) |> div(key) end)
  end

  @doc """
  Calculates variations \( V(n, r) = n^r \).

  ## Parameters
  - `n` - An integer representing the total number of items.
  - `r` - An integer representing the number of selected items.

  ## Returns
  The number of variations.

  ## Examples
      iex> FastMath.Combinatorics.variations(2, 3)
      8
  """
  def variations(n, r) when r >= 0 do
    n ** r
  end

  @doc """
  Efficiently generates all combinations of size `r` from the given list.

  Uses symmetry to optimize generation when `r` is close to `n`.

  ## Parameters
  - `list` - A list of items.
  - `r` - The size of each combination.

  ## Returns
  A list of all possible combinations of size `r`.

  ## Examples
      iex> FastMath.Combinatorics.generate_combinations([1, 2, 3, 4], 3)
      [[2, 3, 4], [1, 3, 4], [1, 2, 4], [1, 2, 3]]

      iex> FastMath.Combinatorics.generate_combinations([1, 2, 3, 4], 1)
      [[1], [2], [3], [4]]

      iex> FastMath.Combinatorics.generate_combinations([1, 2, 3, 4], 0)
      [[]]

      iex> FastMath.Combinatorics.generate_combinations([1, 2, 3, 4], 4)
      [[1, 2, 3, 4]]
  """
  def generate_combinations(list, r) when is_list(list) and r >= 0 and r <= length(list) do
    n = length(list)

    # Use symmetry to reduce computation
    if r > div(n, 2) do
      # Generate combinations for n - r and then invert them
      smaller_combinations = generate_combinations(list, n - r)
      invert_combinations(smaller_combinations, list)
    else
      # Generate combinations directly for r
      do_generate_combinations(list, r, [])
    end
  end

  defp do_generate_combinations(_, 0, acc), do: [Enum.reverse(acc)]
  defp do_generate_combinations([], _, _), do: []

  defp do_generate_combinations([head | tail], r, acc) do
    with_head = do_generate_combinations(tail, r - 1, [head | acc])
    without_head = do_generate_combinations(tail, r, acc)
    with_head ++ without_head
  end

  # Invert combinations to get complementary sets
  defp invert_combinations(combinations, list) do
    full_set = MapSet.new(list)

    Enum.map(combinations, fn subset ->
      MapSet.difference(full_set, MapSet.new(subset)) |> MapSet.to_list()
    end)
  end
end
