defmodule StringsTest do
  use ExUnit.Case
  doctest Strings

  describe "first_letter/1" do
    test "returns the first letter of a string after trimming whitespace" do
      assert Strings.first_letter("  hello  ") == "h"
    end
  end

  describe "initial/1" do
    test "returns the initial of a string, capitalized and followed by a period" do
      assert Strings.initial("john") == "J. "
    end
  end

  describe "initials/1" do
    test "returns the initials of a full name as a string" do
      assert Strings.initials("john doe") == "J. D."
    end
  end

  describe "build_a_cat/0" do
    test "returns the ASCII art of a cat" do
      expected =
        "  \\    /\\\n" <>
          "   )  ( ')\n" <>
          "  (  /  )\n" <>
          "   \\(__)|\n" <>
          "   name"

      assert Strings.build_a_cat() == expected
    end
  end

  describe "display_customize_cat/1" do
    test "displays a customized cat with the owner's initials" do
      assert Strings.display_customize_cat("john doe") == :ok
    end
  end
end
