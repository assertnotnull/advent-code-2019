defmodule Day1 do

  def read_file do
    File.read!("input")
  end
  def recursive_calculate(mass) when mass <= 2, do: 0

  def recursive_calculate(mass) do
    acc = Integer.floor_div(mass, 3) - 2
    acc + recursive_calculate(Integer.floor_div(mass, 3) - 2)
  end

  def process do
    read_file()
    |> String.split("\n")
    |> Enum.map(fn x -> String.to_integer(x) end)
    |> Enum.reduce(0, fn x, acc -> recursive_calculate(x) end)
  end
end
