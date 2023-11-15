defmodule BasicMath do
  @moduledoc """
  This module provides basic math operations.
  """
  @doc """
  Adds two numbers together.

  ## Examples

      iex> BasicMath.add(2, 3)
      5

  """
  def add(addend_1, addend_2), do: addend_1 + addend_2

  @doc """
  Subtracts one number from another.

  ## Examples

      iex> BasicMath.subtract(5, 3)
      2

  """
  def subtract(minuend, subtrahend), do: minuend - subtrahend

  @doc """
  Multiplies two numbers together.

  ## Examples

      iex> BasicMath.multiply(2, 3)
      6

  """
  def multiply(multiplicand, multiplier), do: multiplicand * multiplier

@doc """
    Divides the dividend by the divisor and rounds up the result.

    """
    def divide(dividend, divisor) do
        case dividend / divisor do
          result when is_float(result) ->
            result |> round_up()
        end
    end

  @doc """
  Rounds up a number to two decimal places.

  ## Examples

      iex> BasicMath.round_up(3.14159)
      3.15

  """
  def round_up(value) do
    case value do
      value when is_float(value) ->
        value
        |> Float.ceil(2)

      value ->
        round(value)
    end
  end
end
