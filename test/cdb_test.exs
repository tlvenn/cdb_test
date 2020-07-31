defmodule CDBTest do
  use ExUnit.Case
  doctest TestCdb

  #
  # Expect a database seeded with priv/seed.sql
  #
  test "can fetch a row with an array" do
    %{
      hostname: hostname,
      port: port,
      username: username,
      password: password,
      database: database
    } = Application.get_env(:test_cdb, :database)

    {:ok, pid} = Postgrex.start_link(hostname: hostname, port: port, username: username, password: password, database: database)
    assert %Postgrex.Result{} = Postgrex.query!(pid, "SELECT completed_phases FROM test", [])
  end
end
