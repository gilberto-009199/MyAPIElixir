defmodule MyAPIElixirWeb.UsersController do
  use MyAPIElixirWeb, :controller

  alias MyAPIElixir.Users

  def create(conn, params) do
    params
    |> MyAPIElixir.create_user()
    |> handle_response(conn)
  end

  def handle_response({:ok, %MyAPIElixir.Users{} = user },conn) do
    conn
    |> put_status(:created)
    |> render("create.json", user: user)
  end

  def handle_response({:error, result}, conn) do
    conn
    |> put_status(:bad_request)
    |> put_view(MyAPIElixirWeb.ErrorView)
    |> render("400.json", result: result);
  end

end
