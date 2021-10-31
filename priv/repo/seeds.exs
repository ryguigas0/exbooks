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
  title: "Sobre a Felicidade",
  author: "Frédéric Lenoir",
  description: "O que é feliciade? Como obtê-lá? É um acaso ou é cultivável, ou os dois?",
  price: 0.1,
  # pictures: [
  #   "downloads/sobre_a_felicidade.pdf",
  #   "downloads/sobre_a_felicidade.png",
  # ]
})
|> Repo.insert!()
