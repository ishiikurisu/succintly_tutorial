# Elixir Platform

Consider this module:

``` elixir
defmodule HelloProcess do
  def say(name) do
    IO.puts "hello #{}"
  end
end
```

This can be called like this:

``` elixir
HelloProcess.say("joe")
#=> hello joe
```

Or by spawning a process:

``` elixir
spawn(HelloProcess, :say, ["joe"])
#=> hello joe
#=> #PID<A.B.C>
```

PID has 3 parts:
- A is the machine id. 0 means local machine
- B.C is the process number

Checking if a process is still alive:

``` elixir
pid = spawn(HelloProcess, :say, ["frank"])
#=> hello joe
#=> #PID<A.B.C>
Process.alive?(pid)
#=> false
```

Processes can communicate through messages. First, we define the module
as such:

``` elixir
defmodule AsyncMath do
  def start() do
    receive do
      {:sum, [x, y], pid} ->
        send pid, {:result, x + y}
  end
end
```

Then we start it:

```
# c("async_math.exs")
pid = spawn(AsyncMath, :start, [])
Process.alive?(pid)
#=> true
send(pid, {:sum, [1, 3], self})
#=> {:sum, [1, 3], self_pid}
Process.alive?(pid)
#=> false
flush
#=> {:result, 4}
```

