defmodule Exbooks.Books.Create do
  alias Exbooks.{Repo, Book}

  def call(%{} = new_book) do
    Book.changeset(%Book{}, new_book)
    |> Repo.insert()
    |> handle_insert()
  end

  defp handle_insert({:error, changeset}),
    do: {:error, %{reason: changeset, status: :bad_request}}

  defp handle_insert({:ok, book}), do: book
end
