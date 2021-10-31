# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Exbooks.Repo.insert!(%Exbooks.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Exbooks.{Repo, Book}

%Book{}
|> Book.changeset(%{
  title: "The Hobbit",
  author: "J. R. R. Tolkien",
  description: "The book about the hobbit Bilbo from Lord of the Rings",
  price: 2.2,
  pictures: [
    "path/a.png",
    "path/b.jpg"
  ]
})
|> Repo.insert!()
