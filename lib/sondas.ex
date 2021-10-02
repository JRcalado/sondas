defmodule Sondas do

  alias Sondas.Structs.Planalto
  def start do

    #  get_malha() |> Planalto.new()

  # get_coordenadas
  get_command
  end

  def get_coordenadas do
    input = IO.read(:stdio, :line)
    |> String.split(" ")


    orientation = List.last(input)
    |> String.split("\n")
    |> List.first


    position = input
    |> List.delete(List.last(input))

  end

  def get_malha do
    input = IO.read(:stdio, :line)
    |> String.split(" ")
    |> Enum.map(fn x -> Integer.parse(x) |> elem(0) end)

    [n | elements] = input
  end

  def get_command do
    input = IO.read(:stdio, :line) |>  String.replace(~r/\n/, "")
  end

end
