defmodule Sondas.ActionSondaTest do
  use ExUnit.Case

  alias Sondas.Services.ActionSonda
  alias Sondas.Agents.SondaAgent

  test "Checking for correct probe action" do
    sonda = Sondas.Structs.Sonda.new([1, 2], "n")
    grid = Sondas.Structs.Planalto.new([5, 5])
    assert ActionSonda.action(sonda, grid, "L") == %Sondas.Structs.Sonda{orientation: "W", position: [1, 2]}
  end

  test "Checking value nil in execute" do
    SondaAgent.start_link(%Sondas.Structs.Sonda{orientation: "W", position: [1, 2]})
    assert ActionSonda.execute(nil) == %Sondas.Structs.Sonda{orientation: "W", position: [1, 2]}
  end

  test "Checking function execute" do
    SondaAgent.start_link(%Sondas.Structs.Sonda{orientation: "W", position: [1, 2]})
    assert ActionSonda.execute("ml") == %Sondas.Structs.Sonda{orientation: "S", position: [0, 2]}
  end

  test "Checking function not null String" do
    assert ActionSonda.check_tring("ml") == "ml"
  end

  test "Checking function  null String" do
    assert ActionSonda.check_tring("") == nil
  end

end
