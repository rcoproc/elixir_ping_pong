# PingPong

To init this mix project:

```
mix new ping_pong
```


To run this project:

```
$ iex -S mix

iex(1)> ping = spawn(Ping, :start, [])

iex(2)> pong = spawn(Ping, :start, [])

iex(3)> send(ping, {:pong, pong})

ping ->
{:pong, #PID<0.114.0>}
     <- pong
ping ->
     <- pong
ping ->
     <- pong
ping ->
     <- pong
ping ->
     <- pong
ping ->
     <- pong
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ping_pong` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ping_pong, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/ping_pong](https://hexdocs.pm/ping_pong).

