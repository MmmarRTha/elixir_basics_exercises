defmodule LinkedListsTest do
  use ExUnit.Case
  doctest LinkedLists

  # Test get_essentials_setup_work_from_home_list/0
  test "get_essentials_setup_work_from_home_list returns the correct list" do
    expected = [
      "Laptop",
      "Gaming chair",
      "Mouse",
      "Keyboard",
      "External monitors",
      "Desk organizer",
      "Headphones",
      "Coffee",
      "Water",
      "Snacks"
    ]

    assert LinkedLists.get_essentials_setup_work_from_home_list() == expected
  end

  # Test get_first_item/1
  test "get_first_item returns the first item of the list" do
    list = ["Laptop", "Gaming chair", "Mouse"]
    expected = "Laptop"

    assert LinkedLists.get_first_item(list) == expected
  end

  # Test remove_first_item/1
  test "remove_first_item removes the first item from the list" do
    list = ["Laptop", "Gaming chair", "Mouse"]
    expected = ["Gaming chair", "Mouse"]

    assert LinkedLists.remove_first_item(list) == expected
  end

  # Test add_slow/2
  test "add_slow adds an item to the end of the list" do
    list = ["Laptop", "Gaming chair", "Mouse"]
    value = "Keyboard"
    expected = ["Laptop", "Gaming chair", "Mouse", "Keyboard"]

    assert LinkedLists.add_slow(list, value) == expected
  end

  # Test add_fast/2
  test "add_fast adds a value to the beginning of a list" do
    list = [1, 2, 3]
    value = 4
    expected = [1, 2, 3, 4]

    assert LinkedLists.add_fast(value, list) == expected
  end

  # Test prepend/2
  test "prepend prepends an item to the list" do
    list = ["Laptop", "Gaming chair", "Mouse"]
    value = "Keyboard"
    expected = ["Keyboard", "Laptop", "Gaming chair", "Mouse"]

    assert LinkedLists.prepend(list, value) == expected
  end

  # Test remove_item/2
  test "remove_item removes an item from the list at the specified index" do
    list = ["Laptop", "Gaming chair", "Mouse"]
    index = 1
    expected = ["Laptop", "Mouse"]

    assert LinkedLists.remove_item(list, index) == expected
  end

  # Test items_count/1
  test "items_count returns the number of items in the list" do
    list = ["Laptop", "Gaming chair", "Mouse"]
    expected = 3

    assert LinkedLists.items_count(list) == expected
  end

  # Test check_for_item/2
  test "check_for_item checks if an item is present in the list" do
    list = ["Laptop", "Gaming chair", "Mouse"]
    item = "Keyboard"
    expected = false

    assert LinkedLists.check_for_item(list, item) == expected
  end
end
