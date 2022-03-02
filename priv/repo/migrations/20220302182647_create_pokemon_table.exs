defmodule PokeBattle.Repo.Migrations.CreatePokemonTable do
  use Ecto.Migration

  def change do
    create table("pokemons") do
      add :id_poke_api, :integer
      add :id_user, references("users")
    end
  end
end
