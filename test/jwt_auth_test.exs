defmodule JwtAuthTest do
  use ExUnit.Case
  doctest JwtAuth

  test "greets the world" do
    assert JwtAuth.hello() == :world
  end
end
