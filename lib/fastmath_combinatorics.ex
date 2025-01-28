defmodule FastMath.Combinatorics do
  use Memoize

  @moduledoc """
  `FastMath.Combinatorics` provides fast and efficient combinatorics functions.

  It includes implementations for factorials, permutations, combinations, and
  other fundamental combinatorics operations.
  """

  @doc """
  Calculates the factorial of `n`. Uses `memoize` for caching.

  ## Parameters
  - `n` - A non-negative integer.

  ## Returns
  The factorial of `n`.

  ## Examples
      iex> FastMath.Combinatorics.factorial(5)
      120
  """
  defmemo(factorial(0), do: 1)

  defmemo factorial(n) when n > 0 do
    n * factorial(n - 1)
  end

  @doc """
  Calculates permutations \( P(n, r) = \frac{n!}{(n-r)!} \).

  ## Parameters
  - `n` - An integer representing the total number of items.
  - `r` - An integer representing the number of selected items, \( r \leq n \).

  ## Returns
  The number of permutations.

  ## Examples
      iex> FastMath.Combinatorics.permutations(5, 3)
      60
  """
  def permutations(n, r) when n >= r and r >= 0 do
    # TODO: Implement permutation calculation
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
  def combinations(n, r) when n >= r and r >= 0 do
    # TODO: Implement combination calculation
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
    # TODO: Implement variation calculation
  end

  @doc """
  Generates all combinations of subsets of size `r` from the given list.

  ## Parameters
  - `list` - A list of items.
  - `r` - The size of each combination.

  ## Returns
  A list of all combinations of size `r`.

  ## Examples
      iex> FastMath.Combinatorics.generate_combinations([1, 2, 3], 2)
      [[1, 2], [1, 3], [2, 3]]
  """
  def generate_combinations(list, r) when is_list(list) and r >= 0 do
    # TODO: Implement combination generation
  end
end
