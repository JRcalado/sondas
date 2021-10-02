defmodule Sondas.Services.ActionSonda do

  alias Sondas.Agents.SondaAgent
  alias Sondas.Structs.Sonda
  alias Sondas.Services.MovingSonda

  def action(sonda, grid, command) do

    #  IO.inspect(grid)
    #  IO.inspect(sonda)
    #  String.graphemes(command)

    key="sonda1"
    SondaAgent.start_link
    SondaAgent.set(sonda,key)

    String.graphemes(command)
     |> Enum.each(
        fn args -> Sondas.Services.MovingSonda.control(args,  SondaAgent.get(key), key)
        IO.inspect(args)
        end
      )
       SondaAgent.get(key)
  end



end
