anon_sum  = fn (a, b) -> a + b end

defmodule MyFunctions do
  def sum(a, b) do
    anon_sum.(a, b)
  end

  def sub(a, b), do: a - b

  def print_result(f) do
    IO.puts f.()
  end
end

defmodule DoSomeMath do
  import MyFunctions

  def add_and_subtract(a, b, c) do
    sub(sum(a, b), c)
  end
end

defmodule Factorial do
  def do_it(0) do
    1
  end
  def do_it(n) do
    n * do_it(n - 1)
  end
end

defmodule TailCallFactorial do
  def do_it(n), do: internal_do_it(n, 1)

  defp internal_do_it(0, acc), do: acc

  defp internal_do_it(n, acc) do
    internal_do_it(n - 1, acc * n)
  end
end

defmodule ListUtils do
  def sum([]) do
    0
  end

  def sum([h | t]) do
    h + sum(t)
  end
end

defmodule GuardedDivision do
  def divide_by_10(value) when value > 0 do
    value / 10
  end
end

defmodule Math do
  @spec sum(integer, integer) :: integer
  def sum(a, b) do
    a + b
  end
end

a = fn -> 42 end
MyFunctions.print_result(a)

