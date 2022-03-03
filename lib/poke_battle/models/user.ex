defmodule User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :name
    field :email
    field :password
    field :password_hash
  end

  def changeset(user, params \\ %{}) do
    user
    |> cast(params, [:name, :email, :password])
    |> validate_required([:name, :email, :password])
    |> validate_format(:email, ~r/@/)
    |> unique_constraint(:email)
  end
end
