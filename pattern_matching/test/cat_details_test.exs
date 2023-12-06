defmodule CatDetailsTest do
  use ExUnit.Case
  doctest CatDetails

  describe "get_details_list/0" do
    test "returns a list of cat names" do
      expected = [:nala, :ivy, :galleta]
      assert CatDetails.get_details_list() == expected
    end
  end

  describe "details/1" do
    test "returns details for :nala" do
      expected = {6, :years, :orange}
      assert CatDetails.details(:nala) == expected
    end

    test "returns details for :ivy" do
      expected = {4, :years, :black}
      assert CatDetails.details(:ivy) == expected
    end

    test "returns details for :galleta" do
      expected = {10, :years, :white}
      assert CatDetails.details(:galleta) == expected
    end

    test "raises an error for unknown cat" do
      assert_raise RuntimeError, fn -> CatDetails.details(:unknown) end
    end
  end
end
