defmodule Sondas.SondaTest do
  use ExUnit.Case

 alias Sondas.Structs.Sonda

  test "create new sonda" do
    assert Sonda.new([1, 2], "n") == %Sondas.Structs.Sonda{orientation: "n", position: [1, 2]}
  end

  test "update sonda orientation" do
    sonda1 = Sonda.new([1, 2], "n")
    assert Sonda.update_orientation(sonda1, "e") == %Sondas.Structs.Sonda{orientation: "e", position: [1, 2]}
  end

  test "update sonda position" do
    sonda1 = Sonda.new([1, 2], "n")
    assert Sonda.update_position(sonda1, [5, 4]) == %Sondas.Structs.Sonda{orientation: "n", position: [5, 4]}
  end
end
