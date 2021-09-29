defmodule Sondas.PlanaltoTest do
  use ExUnit.Case

  alias Sondas.Structs.Planalto

  test "Create new planalto" do
    assert Planalto.new([5, 1]) == [1]
  end


end
