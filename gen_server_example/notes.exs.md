# GenServer

`GenServer` has the following capabilities:

- Creating a server process
- Managing the server state
- Creating a server process
- Manage the server state
- Handling requests and sending responses
- Stopping the server
- Handling failures

To start the server:
```sh
# iex
c("./lib/mini_redis.ex")
#=> [MiniRedis]
{:ok, pid} = GenServer.start_link(MiniRedis, [])
#=> {:ok, #PID<0.114.0>}
GenServer.call(pid, {:set, "greet", "oi"})
#=> :ok
GenServer.call(pid, {:get, "greet"})
#=> {:ok, "oi"}
```

