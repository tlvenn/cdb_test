# TestCdb

To reproduce the error, follow these steps:

1. Create a database and seed it with the script in `priv/seed.sql`
2. Make sure the database information is correct in `config/config.exs`
3. Fetch the dependencies
```
mix deps.get
```
3. Run the test:
```
mix test
```
