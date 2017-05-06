defmodule ConstantsTest do
  use ExUnit.Case
  doctest Constants

  defmodule Test do
    use Constants

    @name :a
    @value :b

    @name "c"
    @value "d"
  end

  test "should define functions for constants" do
    assert Test.a == :b
    assert Test.c == "d"
  end
end
