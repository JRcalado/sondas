defmodule Sondas.ActionSondaTest do
  use ExUnit.Case

  alias Sondas.Services.ActionSonda

  test "Checking for correct probe action" do

    sonda = Sondas.Structs.Sonda.new([1, 2], "n")
    grid = Sondas.Structs.Planalto.new([5, 5])

    assert ActionSonda.action(sonda, grid, "L") == [1, 2, "e"]


  end

end
