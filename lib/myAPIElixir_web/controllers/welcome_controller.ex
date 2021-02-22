defmodule MyAPIElixirWeb.WelcomeController do
  use MyAPIElixirWeb, :controller

  alias MyAPIElixir.Numbers

  def index(conn, %{"filename" => filename}) do
    filename
    |> Numbers.sum_from_file()
    |> handle_response(conn)
    #    text(conn,"Welcome to MyAPI")
  end
  def handle_response({:ok, %{result: result}},conn) do
    conn
    |> put_status(:ok)
    |> json( %{message: "Welcome to MyAPI , Sum form numbers is #{result} "} )
  end
  def handle_response({:error, reason},conn) do
    conn
    |> put_status(:bad_request)
    |> json(reason)
  end
end
