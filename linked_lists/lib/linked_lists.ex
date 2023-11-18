defmodule LinkedLists do
    @moduledoc """
    This module provides functions for working with linked lists.
    """

    @doc """
    Returns the `essentials_setup_work_from_home_list`.

    Returns `list` of `strings`

    ## Examples

            iex> LinkedLists.get_essentials_setup_work_from_home_list()
            ["Laptop", "Gaming chair", "Mouse", "Keyboard", "External monitors", "Desk organizer", "Headphones", "Coffee", "Water", "Snacks"]

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
            "Snacks"
        ]
    end

    @doc """
    Returns the first item of the list.

    ## Examples

            iex> LinkedLists.get_first_item(["Laptop", "Gaming chair", "Mouse"])
            "Laptop"

    """
    def get_first_item(list) do
        hd(list)
    end

    @doc """
    Removes the first item from the list and returns the remaining list.

    ## Examples

            iex> LinkedLists.remove_first_item(["Laptop", "Gaming chair", "Mouse"])
            ["Gaming chair", "Mouse"]

    """
    def remove_first_item(list) do
        tl(list)
    end

    @doc """
    Adds an item to the end of the list.

    ## Examples

            iex> LinkedLists.add_slow(["Laptop", "Gaming chair", "Mouse"], "Keyboard")
            ["Laptop", "Gaming chair", "Mouse", "Keyboard"]

    """
    def add_slow(list, value) do
        list ++ [value]
    end


    @doc """
        Adds a value to the beginning of a list.

        ## Examples

                iex> LinkedLists.add_fast(4, [1, 2, 3])
                [1, 2, 3, 4]

        """
        def add_fast(value, list) do
            list
            |> Enum.reverse()
            |> prepend(value)
            |> Enum.reverse()
        end

    @doc """
    Prepends an item to the list.

    ## Examples

            iex> LinkedLists.prepend(["Laptop", "Gaming chair", "Mouse"], "Keyboard")
            ["Keyboard", "Laptop", "Gaming chair", "Mouse"]

    """
    def prepend(list, value) do
        [value | list]
    end

    @doc """
    Removes an item from the list at the specified index.

    ## Examples

            iex> LinkedLists.remove_item(["Laptop", "Gaming chair", "Mouse"], 1)
            ["Laptop", "Mouse"]

    """
    def remove_item(list, index) do
        List.delete_at(list, index)
    end

    @doc """
    Returns the number of items in the list.

    ## Examples

            iex> LinkedLists.items_count(["Laptop", "Gaming chair", "Mouse"])
            3

    """
    def items_count(list) do
        length(list)
    end

    @doc """
    Checks if an item is present in the list.

    ## Examples

            iex> LinkedLists.check_for_item(["Laptop", "Gaming chair", "Mouse"], "Keyboard")
            false

    """
    def check_for_item(list, item) do
        item in list
    end
end
