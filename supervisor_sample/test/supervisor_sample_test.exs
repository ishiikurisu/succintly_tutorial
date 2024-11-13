defmodule SupervisorSampleTest do
  use ExUnit.Case
  doctest SupervisorSample

  test "greets the world" do
    assert SupervisorSample.hello() == :world
  end
end
