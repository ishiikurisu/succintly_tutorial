defmodule MiniRedis do
  use GenServer

  def init(_) do
    {:ok, %{}}
  end

  def handle_call({:set, key, value}, _from, state) do
    {:reply, :ok, Map.merge(state, %{key => value})}
  end

  def handle_call({:get, key}, _from, state) do
    {:reply, Map.fetch(state, key), state}
  end
end
