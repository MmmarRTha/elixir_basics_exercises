defmodule CalculatorTest do
  use ExUnit.Case
  doctest Calculator

  describe "find_percentage_of_value/2" do
    test "finds percentage of value" do
      assert Calculator.find_percentage_of_value(10, 50) == 5
      assert Calculator.find_percentage_of_value(25, 200) == 50
      assert Calculator.find_percentage_of_value(50, 100) == 50
    end
  end

  describe "find_distance_traveled/2" do
    test "calculates the distance traveled given the speed and time" do
      assert Calculator.find_distance_traveled(60, 2) == 120
      assert Calculator.find_distance_traveled(60, 2.5) == 150
    end
  end
end
