defmodule PingPongTest do
  use ExUnit.Case
  doctest PingPong

  test "greets the world" do
    assert PingPong.hello() == :world
  end
  
  test "it respond to a pong with a ping" do
  	ping = spawn(Ping, :start, [])
    send(ping, {:pong, self})
    assert_receive {:ping, ^ping}
  end
  
  test "it responds to two messages" do
  	ping = spawn(Ping, :start, [])
    send(ping, {:pong, self()})
    assert_receive {:ping, ^ping}
    send(ping, {:pong, self()})
    assert_receive {:ping, ^ping}
  end
end
