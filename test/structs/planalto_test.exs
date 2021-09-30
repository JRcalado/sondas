defmodule Sondas.PlanaltoTest do
  use ExUnit.Case

  alias Sondas.Structs.Planalto

  test "Create new planalto" do
    assert Planalto.new([5, 1]) == %Sondas.Structs.Planalto{grid: [{0, 1, 2, 3, 4, 5}], size: 6}
  end


end
