defmodule FastMath.CombinatoricsTest do
  use ExUnit.Case
  doctest FastMath.Combinatorics

  test "factorial" do
    assert FastMath.Combinatorics.factorial(0) == 1
    assert FastMath.Combinatorics.factorial(1) == 1
    assert FastMath.Combinatorics.factorial(5) == 120
    assert FastMath.Combinatorics.factorial(10) == 3_628_800
  end

  test "permutation" do
    assert FastMath.Combinatorics.permutations(5, 1) == 5
    assert FastMath.Combinatorics.permutations(5, 2) == 20
    assert FastMath.Combinatorics.permutations(5, 3) == 60
  end

  test "combination" do
    assert FastMath.Combinatorics.combinations(5, 1) == 5
    assert FastMath.Combinatorics.combinations(5, 2) == 10
    assert FastMath.Combinatorics.combinations(5, 0) == 1
  end

  test "variation" do
    assert FastMath.Combinatorics.variations(2, 0) == 1
    assert FastMath.Combinatorics.variations(2, 5) == 32
  end
end
