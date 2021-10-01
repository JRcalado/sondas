defmodule Sondas.Services.MovingSonda do

  def action_sonda(sonda, grid, command) do
    #  IO.inspect(grid)
    #  IO.inspect(sonda)
    #  String.graphemes(command)

     String.graphemes(command)
     |> Enum.each(fn args -> control(args, sonda)|>IO.inspect end)
  end



  def control(out, sonda)do


     action = String.upcase(out)

    cond do
      action == "L" or action == "R" -> calculate(action,  sonda.orientation )
      action == "M" -> moved( sonda.position,  sonda.orientation)
      true -> {:error, "coordenadas erradas"}

    end

  end


def moved(position, orientation)do

    case orientation do
      "N" -> List.update_at(position, 0, &(&1 + 1))
      "E" -> List.update_at(position, 1, &(&1 + 1))
      "S" -> List.update_at(position, 0, &(&1 - 1))
      "W" -> List.update_at(position, 1, &(&1 - 1))

    end

end


  def calculate(turn, orientation )do

               map =  %{
                   :N => %{L: "W", R: "E"},
                   :E =>%{L: "N", R: "S"},
                   :S => %{L: "E", R: "W"},
                   :W => %{L: "N", R: "S"}
                }
    Map.get(map, String.to_atom(orientation))
    |> Map.get( String.to_atom(turn))

  end
end
