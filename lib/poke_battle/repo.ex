defmodule PokeBattle.Repo do
  use Ecto.Repo,
    otp_app: :poke_battle,
    adapter: Ecto.Adapters.Postgres
end
