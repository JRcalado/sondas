defmodule Sondas.SondaTest do
  use ExUnit.Case

 alias Sondas.Structs.Sonda

  test "create new sonda" do
    assert Sonda.new([1, 2], "n") == %Sondas.Structs.Sonda{orientation: "n", position: [1, 2]}
  end
end
