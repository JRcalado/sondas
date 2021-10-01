defmodule Sondas.Agents.SondaAgent do

  use Agent

  def start_link() do
    Agent.start_link(fn -> %{} end, name: __MODULE__)
  end

  def stop() do
    Agent.stop(__MODULE__)
  end

  def get(key) do
    Agent.get(__MODULE__,
      &Map.get(&1, key)
    )
  end

  def set(sonda,key) do
    Agent.update(__MODULE__,
      &Map.put(&1, key, sonda)
    )
  end


end
