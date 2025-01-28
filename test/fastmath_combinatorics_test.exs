defmodule FastMath.CombinatoricsTest do
  use ExUnit.Case
  # doctest FastMath.Combinatorics

  test "factorial" do
    assert FastMath.Combinatorics.factorial(0) == 1
    assert FastMath.Combinatorics.factorial(1) == 1
    assert FastMath.Combinatorics.factorial(5) == 120
    assert FastMath.Combinatorics.factorial(10) == 3_628_800
  end
end
