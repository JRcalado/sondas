defmodule Sondas.Structs.Planalto do

  defstruct [:x, :y]

  def new() do
    %__MODULE__{


    }
  end

  def init(size) do
    teste =  for x <- 1..size do
      size - x
    end
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
