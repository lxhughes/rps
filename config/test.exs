import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :rps, RpsWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "zUrZcWVsAzec5ktuOgxVYeKrTB/S4RG994UY3FKJrs61L5yp8NV/NKwoIDnZ8yO4",
  server: false

# In test we don't send emails.
config :rps, Rps.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
