defmodule MyAPIElixir.Repo do
  use Ecto.Repo,
    otp_app: :myAPIElixir,
    adapter: Ecto.Adapters.Postgres
end
