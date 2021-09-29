defmodule Sondas.Structs.Planalto do

  defstruct size: nil, grid: nil

  def new(size) do
    %__MODULE__{
      size: size, grid: init(size)

    }
  end

  def init(list) do

    size = sum(list)
    teste =  for x <- 1..size do
      size - x
    end
  end

  def sum([]), do: 0

  def sum([head | tail]) do
    head + sum(tail)
  end

end


  # [
  #   [5, 6, 7, 8, 9, 10, 11],
  #   [4, 5, 6, 7, 8, 9, 10],
  #   [3, 4, 5, 6, 7, 8, 9],
  #   [2, 3, 4, 5, 6, 7, 8],
  #   [1, 2, 3, 4, 5, 6, 7],
  #   [0, 1, 2, 3, 4, 5, 6]
  # ]
