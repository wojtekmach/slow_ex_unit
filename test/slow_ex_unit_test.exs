defmodule SlowExUnitTest do
  use ExUnit.Case

  test "greets the world" do
    filename = System.get_env("COUNTER_FILE")

    counter =
      case File.read(filename) do
        {:ok, binary} -> String.to_integer(binary)
        {:error, _} -> 0
      end

    IO.inspect counter
    File.write!(filename, Integer.to_string(counter + 1))

    assert SlowExUnit.hello() == :world
  end
end
