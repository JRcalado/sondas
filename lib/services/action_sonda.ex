defmodule Sondas.Services.ActionSonda do

  alias Sondas.Agents.SondaAgent
  alias Sondas.Structs.Sonda
  alias Sondas.Services.MovingSonda

  def action(sonda, grid, command) do
      SondaAgent.start_link(sonda)
      execute(command)
        SondaAgent.get()
  end

  def execute(nil), do: SondaAgent.get()

  def execute(command) do

    String.next_codepoint(command)
    |> Tuple.to_list
    |> List.first
    |> Sondas.Services.MovingSonda.control(SondaAgent.get())




    String.next_codepoint(command)
    |> Tuple.to_list
    |> List.last
    |> check_tring
    |> execute()


  end



  def check_tring(str) do

    case String.length(str)  do
      0 -> nil
      _ -> str
    end
  end




end
