defmodule Day1Test do
  use ExUnit.Case
  doctest Day1

  test "recursive calculate" do
    assert Day1.recursive_calculate(100756) == 50346
  end
end
