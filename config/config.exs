use Mix.Config

config :test_cdb, database: %{
  hostname: "localhost",
  port: 26257,
  username: "root",
  password: "none",
  database: "testdb"
}
