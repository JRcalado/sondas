defmodule Sondas.PlanaltoTest do
  use ExUnit.Case

  alias Sondas.Structs.Planalto

  test "Create new planalto" do
    Planalto.new([5, 5]) == "teste"
  end


end
