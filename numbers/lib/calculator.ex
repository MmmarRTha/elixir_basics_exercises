defmodule Calculator do
    @moduledoc """
    This module provides functions to perform basic calculations.
    """

    @doc """
    Calculates the percentage of a given value.

    ## Examples

            iex> Calculator.find_percentage_of_value(20, 100)
            20.0

    """
    def find_percentage_of_value(percentage, value) do
        BasicMath.multiply(percentage, value) / 100
    end

    @doc """
    Calculates the distance traveled given the speed and time.

    ## Examples

            iex> Calculator.find_distance_traveled(60, 2)
            120

    """
    def find_distance_traveled(speed, time) do
        speed
        |> BasicMath.multiply(time)
        |> BasicMath.round_up()
    end
end
