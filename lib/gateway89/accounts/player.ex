defmodule Gateway89.Accounts.Player do
  use Ecto.Schema
  import Ecto.Changeset

  schema "players" do
    field :barions, :integer
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(player, attrs) do
    player
    |> cast(attrs, [:name, :barions])
    |> validate_required([:name, :barions])
  end
end
