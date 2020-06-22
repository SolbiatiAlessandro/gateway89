defmodule Gateway89.Utils do
  @seconds_in_a_year 31_104_000

  def gateway89_date do
    player_date = DateTime.utc_now()
    DateTime.add(player_date, @seconds_in_a_year * 34, :second)
  end

  def gateway89_date_formatted do
    gateway89_date() |> DateTime.to_string() |> String.slice(0, 19)
  end
end
