defmodule Strings do
  @moduledoc """
  This module provides functions for manipulating strings and building a customized cat.
  """

  @doc """
  Returns the first letter of a string after trimming any leading or trailing whitespace.

  ## Examples

          iex> Strings.first_letter("  hello  ")
          "h"

  """
  def first_letter(value) do
    String.trim(value)
    |> String.first()
  end

  @doc """
  Returns the initial of a string, capitalized and followed by a period.

  ## Examples

          iex> Strings.initial("john")
          "J. "

  """
  def initial(value) do
    "#{first_letter(value) |> String.capitalize()}. "
  end

  @doc """
  Returns the initials of a full name as a string.

  ## Examples

          iex> Strings.initials("john doe")
          "J. D."

  """
  def initials(full_name) do
    list = String.split(full_name)

    Enum.map(list, fn name ->
      initial(name)
    end)
    |> List.to_string()
    |> String.trim()
  end

  @doc """
  Builds a cat ASCII art.

  """
  def build_a_cat() do
    "  \\    /\\\n" <>
      "   )  ( ')\n" <>
      "  (  /  )\n" <>
      "   \\(__)|\n" <>
      "   name"
  end

  @doc """
      Displays a customized cat with the owner's initials.
  """

  def display_customize_cat(full_name) do
    cat_label = " #{initials(full_name)}'s owner"

    "#{build_a_cat()}"
    |> String.replace("   name", cat_label)
    |> IO.puts()
  end
end
