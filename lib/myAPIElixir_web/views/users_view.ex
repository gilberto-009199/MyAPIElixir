defmodule MyAPIElixirWeb.UsersView do

  alias MyAPIElixir.Users

  def render("create.json", %{user: %MyAPIElixir.Users{id: id, nome: nome, nick: nick} }) do
    %{
      message: "User created",
      user: %{
        id: id,
        nome: nome,
        nick: nick
      }
    }
  end



end
