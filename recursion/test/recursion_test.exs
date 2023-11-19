defmodule RecursionTest do
  use ExUnit.Case
  doctest Recursion

  # Test for get_essentials_setup_work_from_home_list/0
  test "get_essentials_setup_work_from_home_list/0 returns a list of essentials for setting up a work-from-home environment" do
    essentials = Recursion.get_essentials_setup_work_from_home_list()

    expected_essentials = [
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

    assert essentials == expected_essentials
  end

  # Test case for an empty list
  test "loop_through_list/1 with an empty list" do
    result = Recursion.loop_through_list([])
    assert result == nil
  end

# Test case for a non-empty list
test "loop_through_list/1 with a non-empty list" do
    list = [1, 2, 3]
    result = Recursion.loop_through_list(list)
    assert result == nil
end

  # Test for items_count/1
  test "items_count/1 returns the number of items in the list" do
    count = Recursion.items_count(["Laptop", "Mouse", "Keyboard"])
    assert count == 3
  end

  # Test for format_items_list/1
  test "format_items_list/1 formats the list of items" do
    formatted_list = Recursion.format_items_list(["Laptop", "Gaming chair", "Mouse"])
    expected_formatted_list = ["laptop", "gaming_chair", "mouse"]

    assert formatted_list == expected_formatted_list
  end

  # Test for occurrence_count/2
  test "occurrence_count/2 returns the number of occurrences of a value in the list" do
    count = Recursion.occurrence_count([1, 2, 2, 3, 2, 4], 2)
    assert count == 3

    count = Recursion.occurrence_count([:a, :b, :c, :a, :a], :a)
    assert count == 3
  end
end
