defmodule Sondas do

  alias Sondas.Structs.Planalto
  alias Sondas.Structs.Sonda
  alias Sondas.Services.ActionSonda

  def start do
    grid = get_malha() |> Planalto.new()
    sonda1 = get_coordenadas
     |> ActionSonda.action(grid, get_command)

    sonda2 = get_coordenadas
     |> Sondas.Agents.SondaAgent.set()
     |> ActionSonda.action(grid, get_command)

    display(sonda1)
    display(sonda2)


  end

  def get_coordenadas do
    input = IO.read(:stdio, :line)
    |> String.split(" ")


    orientation = List.last(input)
    |> String.split("\n")
    |> List.first


    position = input
    |> List.delete(List.last(input))
    |> Enum.map(fn x -> Integer.parse(x) |> elem(0) end)


    Sonda.new(position, orientation)

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

  def display(sonda) do

    position_prt1 = List.first(Map.get(sonda, :position))
    position_prt2 = List.last(Map.get(sonda, :position))
    orientation = Map.get(sonda, :orientation)

    IO.puts("#{position_prt1} #{position_prt2} #{orientation}")
    # IO.puts(sonda2.position <> " " sonda2.orientation)
  end

end
