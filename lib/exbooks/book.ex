defmodule Exbooks.Book do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}

  @required_params [:title, :price, :author, :pictures]
  @params [:description] ++ @required_params

  schema "books" do
    field(:title, :string)
    field(:description, :string)
    field(:price, :float)
    field(:pictures, {:array, :string})
    field :author, :string
    timestamps()
  end

  def changeset(%__MODULE__{} = book, changes \\ %{}) do
    book
    |> cast(changes, @params)
    |> validate_required(@required_params)
    |> validate_length(:title, min: 5, max: 100)
    |> validate_length(:author, min: 3)
    |> validate_length(:description, min: 20, max: 300)
    |> validate_number(:price, greater_than_or_equal_to: 0.1)
    |> validate_length(:pictures, min: 1)
  end
end
