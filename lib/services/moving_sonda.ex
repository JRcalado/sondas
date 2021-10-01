defmodule Sondas.Services.MovingSonda do

  alias Sondas.Agents.SondaAgent
  alias Sondas.Structs.Sonda

  def action_sonda(sonda, grid, command) do
    #  IO.inspect(grid)
    #  IO.inspect(sonda)
    #  String.graphemes(command)

    key="sonda1"
    SondaAgent.start_link
    SondaAgent.set(sonda,key)

    String.graphemes(command)
     |> Enum.each(
        fn args -> control(args,  SondaAgent.get(key), key) |> IO.inspect
        end
      )
      SondaAgent.get(key)
  end

  def updade_orientatio(orientation, key) do

    SondaAgent.get(key)
    |> Sonda.update_orientation(orientation)
    |> SondaAgent.set('sonda1')

    SondaAgent.get('sonda1')

  end

  def updade_position(position, key) do

    SondaAgent.get(key)
    |> Sonda.update_position(position)
    |> SondaAgent.set('sonda1')

    SondaAgent.get('sonda1')

  end

  def control(out, sonda, key)do


     action = String.upcase(out)

    cond do
      action == "L" or action == "R" -> calculate(action,  sonda.orientation)
                                            |> updade_orientatio(key)
      action == "M" -> moved( sonda.position,  sonda.orientation)
                                            |> updade_position(key)
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
