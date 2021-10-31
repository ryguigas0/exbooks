defmodule ExbooksWeb.BookController do
  use ExbooksWeb, :controller

  alias Exbooks.Book

  def create(conn, params) do
    params
    |> Exbooks.create_book()
    |> handle_creation(conn)
  end

  defp handle_creation({:error, %{reason: changeset, status: status}}, conn) do
    conn
    |> put_status(status)
    |> put_view(ExbooksWeb.ErrorView)
    |> render("bad_request.json", %{err: changeset})
  end

  defp handle_creation(new_book, conn) do
    conn
    |> put_status(:created)
    |> json(new_book)
  end
end
