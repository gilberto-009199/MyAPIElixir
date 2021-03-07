defmodule MyAPIElixir.Users.Create do
  alias MyAPIElixir.{Repo, Users}

  def call(parametros) do
    parametros
    |> Users.changeset()
    |> Repo.insert()
  end


end
