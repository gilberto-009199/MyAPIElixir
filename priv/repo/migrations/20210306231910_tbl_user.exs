defmodule MyAPIElixir.Repo.Migrations.TblUser do
  use Ecto.Migration

  # Funcao para criar a tabela
  def change do
    create table :users do
      add :nick, :string
      add :nome, :string
      add :email, :string
      add :password_hash, :string


      timestamps()# Adiciona a data de de alteracao ou criacao da entidade
    end
    # Determina os valores unicos
    create unique_index(:users, [:email])
    create unique_index(:users, [:nick])

  end
end
