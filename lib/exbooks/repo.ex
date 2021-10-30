defmodule Exbooks.Repo do
  use Ecto.Repo,
    otp_app: :exbooks,
    adapter: Ecto.Adapters.Postgres
end
