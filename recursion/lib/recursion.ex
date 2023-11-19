defmodule Recursion do
  @moduledoc """
  This module provides functions for working with lists using recursion.
  """

  @doc """
  Retrieves a list of essentials for setting up a work-from-home environment.

  ## Examples

          iex> Recursion.get_essentials_setup_work_from_home_list()
          [
              "Laptop",
              "Gaming chair",
              "Mouse",
              "Keyboard",
              "External monitors",
              "Desk organizer",
              "Headphones",
              "Coffee",
              "Water",
              "Snacks",
              "Snacks"
          ]
  """
  def get_essentials_setup_work_from_home_list() do
    [
      "Laptop",
      "Gaming chair",
      "Mouse",
      "Keyboard",
      "External monitors",
      "Desk organizer",
      "Headphones",
      "Coffee",
      "Water",
      "Snacks",
      "Snacks"
    ]
  end

  @doc """
  Recursively loops through a list and prints each item.

  ## Examples

          iex> Recursion.loop_through_list(["Laptop", "Mouse", "Keyboard"])
          Laptop
          Mouse
          Keyboard
          nil
  """
  def loop_through_list([]), do: nil

  def loop_through_list([head | tail]) do
    IO.puts(head)
    loop_through_list(tail)
  end

  @doc """
  Counts the number of items in a list.

  ## Examples

          iex> Recursion.items_count(["Laptop", "Mouse", "Keyboard"])
          3
  """
  def items_count([]), do: 0
  def items_count([_head | tail]), do: 1 + items_count(tail)

  @doc """
  Formats a list of items by converting each item to lowercase and replacing spaces with underscores.

  ## Examples

          iex> Recursion.format_items_list(["Laptop", "Gaming chair", "Mouse"])
          ["laptop", "gaming_chair", "mouse"]
  """
  def format_items_list([]), do: []

  def format_items_list([head | tail]) do
    [head |> String.downcase() |> String.replace(" ", "_") | format_items_list(tail)]
  end

  @doc """
  Counts the occurrences of a value in a list.

  ## Examples

          iex> Recursion.occurrence_count([1, 2, 2, 3, 2, 4], 2)
          3

          iex> Recursion.occurrence_count([:a, :b, :c, :a, :a], :a)
          3

  """
  def occurrence_count([], _value), do: 0
  def occurrence_count([value | tail], value), do: 1 + occurrence_count(tail, value)
  def occurrence_count([_head | tail], value), do: occurrence_count(tail, value)
end
