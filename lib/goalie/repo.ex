defmodule Goalie.Repo do
  use Ecto.Repo,
    otp_app: :goalie,
    adapter: Ecto.Adapters.Postgres
end
