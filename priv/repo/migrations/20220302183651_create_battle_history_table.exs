defmodule PokeBattle.Repo.Migrations.CreateBattleHistoryTable do
  use Ecto.Migration

  def change do
    create table("battle_history") do
      add :id_pokemon, references("pokemons")
      add :id_api_pokemon, :integer
      add :pokemon_winner, :string
    end
  end
end
