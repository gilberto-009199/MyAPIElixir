defmodule MyAPIElixir.Users do
  use Ecto.Schema
  import Ecto.Changeset

  # ninary id e o UUID
  @primary_key {:id, :binary_id, autogenerate: true}

  schema "users" do
    field :nick, :string
    field :nome, :string
    field :email, :string
    field :pass, :string, virtual: true # Campo virtual para senha em texto puro
    field :password_hash, :string

    timestamps()

  end

  @required_params [ :nick, :nome, :email, :pass ]
  # mapeia os dados e aplica a validacao
  def changeset(parametros) do
    %__MODULE__{}
    |> cast(parametros, @required_params)
    |> validate_required(@required_params)
    |> validate_format(:email, ~r/@/) # validando email por expressao regular
    |> put_password_hash()
  end

  defp put_password_hash( %Ecto.Changeset{ valid?: true, changes: %{ pass: pass } } = changeset ) do
    change( changeset, Bcrypt.add_hash(pass) )
  end

  defp put_password_hash( changeset ), do: changeset
end
