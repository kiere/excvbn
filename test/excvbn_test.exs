defmodule ExcvbnTest do
  use ExUnit.Case
  # doctest Excvbn

  describe "with level-2 scored complex password" do
    test "evaluates to a score of 2" do
      assert Excvbn.test("Tr0ub4dour&3")["score"] == 2
    end
  end
end
