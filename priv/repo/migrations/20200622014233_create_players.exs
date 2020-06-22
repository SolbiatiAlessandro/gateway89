defmodule Gateway89.Repo.Migrations.CreatePlayers do
  use Ecto.Migration

  def change do
    create table(:players) do
      add :name, :string
      add :barions, :integer

      timestamps()
    end

  end
end
