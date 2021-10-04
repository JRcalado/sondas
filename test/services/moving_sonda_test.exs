defmodule Sondas.MovingSondaTest do
  use ExUnit.Case

  alias Sondas.Services.MovingSonda
  alias Sondas.Agents.SondaAgent

  test "Checking for correct probe move ments" do
    SondaAgent.start_link(%Sondas.Structs.Sonda{orientation: "W", position: [1, 2]})
    sonda =  SondaAgent.get()
    assert MovingSonda.control("m", sonda) == %Sondas.Structs.Sonda{orientation: "W", position: [0, 2]}
  end

  test "test moving east " do
    assert MovingSonda.moved([1, 2], "E") == [2, 2]
  end

  test "test moving west " do
    assert MovingSonda.moved([1, 2], "W") == [0, 2]
  end

  test "test moving north " do
    assert MovingSonda.moved([1, 2], "N") == [1, 3]
  end

  test "test moving south " do
    assert MovingSonda.moved([1, 2], "S") == [1, 1]
  end

  test "test calculus test to come left" do
    assert MovingSonda.calculate("L", "S") == "E"
  end

  test "test calculus test to come right" do
    assert MovingSonda.calculate("R", "S") == "W"
  end

  test "test update orientation in struct" do
    SondaAgent.start_link(%Sondas.Structs.Sonda{orientation: "W", position: [1, 2]})
    assert MovingSonda.updade_orientatio("N") == %Sondas.Structs.Sonda{orientation: "N", position: [1, 2]}
  end

  test "test update position in struct" do
    SondaAgent.start_link(%Sondas.Structs.Sonda{orientation: "W", position: [1, 2]})
    assert MovingSonda.updade_position([1, 3]) == %Sondas.Structs.Sonda{orientation: "W", position: [1, 3]}
  end

end
