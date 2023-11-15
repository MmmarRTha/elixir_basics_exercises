defmodule BasicMathTest do
  use ExUnit.Case
  doctest BasicMath

  describe "add/2" do
    test "adds two positive numbers" do
      assert BasicMath.add(2, 3) == 5
    end

    test "adds a positive and a negative number" do
      assert BasicMath.add(2, -3) == -1
    end

    test "adds two negative numbers" do
      assert BasicMath.add(-2, -3) == -5
    end
  end

  describe "subtract/2" do
    test "subtracts a positive number from a larger positive number" do
      assert BasicMath.subtract(5, 3) == 2
    end

    test "subtracts a negative number from a positive number" do
      assert BasicMath.subtract(5, -3) == 8
    end

    test "subtracts a negative number from a larger negative number" do
      assert BasicMath.subtract(-5, -3) == -2
    end
  end

  describe "multiply/2" do
    test "multiplies two positive numbers" do
      assert BasicMath.multiply(2, 3) == 6
    end

    test "multiplies a positive and a negative number" do
      assert BasicMath.multiply(2, -3) == -6
    end

    test "multiplies two negative numbers" do
      assert BasicMath.multiply(-2, -3) == 6
    end
  end

  describe "divide/2" do
    test "divides a larger positive number by a smaller positive number" do
      assert BasicMath.divide(6, 3) == 2
    end

    test "divides a positive number by a negative number" do
      assert BasicMath.divide(6, -3) == -2
    end

    test "divides a larger negative number by a smaller negative number" do
      assert BasicMath.divide(-6, -3) == 2
    end

    # test "raises an error when dividing by zero" do
    #   assert_raise ZeroDivisionError, fn -> BasicMath.divide(6, 0) end
    # end
  end

  describe "round_up/1" do
    test "rounds up a number with two decimal places" do
      assert BasicMath.round_up(3.14159) == 3.15
    end

    test "rounds up a number with one decimal place" do
      assert BasicMath.round_up(3.1) == 3.11
    end

    test "rounds up a whole number" do
      assert BasicMath.round_up(3) == 3.0
    end
  end
end
