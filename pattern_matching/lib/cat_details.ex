defmodule CatDetails do
  @moduledoc """
  This module provides functions to retrieve details about different cats.
  """

  @doc """
  Retrieves a list of cat names.

  ## Examples

          iex> CatDetails.get_details_list()
          [:nala, :ivy, :galleta]

  """
  def get_details_list() do
    [:nala, :ivy, :galleta]
  end

  def details(:nala) do
    {6, :years, :orange}
  end

  def details(:ivy) do
    {4, :years, :black}
  end

  def details(:galleta) do
    {10, :years, :white}
  end

  @doc """
  Raises an error for an unknown cat.

  """
  def details(_), do: raise("unknown cat")
end
