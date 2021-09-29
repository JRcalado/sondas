defmodule Sondas.SondaTest do
  use ExUnit.Case

 alias Sondas.Structs.Sonda

  test "create new sonda" do
    assert Sondas.Structs.Sonda.new([1, 2, "n"]) == "teste"
  end
end
