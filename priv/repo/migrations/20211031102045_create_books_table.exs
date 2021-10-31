defmodule Exbooks.Repo.Migrations.CreateBooksTable do
  use Ecto.Migration

  def change do
    create table(:books, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :author, :string
      add :title, :string
      add :price, :float
      add :description, :string
      add :pictures, {:array, :string}

      timestamps()
    end
  end
end
