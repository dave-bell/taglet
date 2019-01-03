defmodule Taglet.Repo do
  use Ecto.Repo,
    otp_app: :taglet,
    adapter: Ecto.Adapters.Postgres,
    username: "postgres",
    password: "password",
    database: "taglet_test",
    hostname: "localhost",
    poolsize: 10
end
