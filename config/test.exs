import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :frobots_client_pixi, FrobotsClientPixiWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "7wnTfG+A4GaRKwT3gu0WGYx0/PAE+7gybxfxTRyR2WgkEBLgWthhuRZQy5iUYaBI",
  server: false

# In test we don't send emails.
config :frobots_client_pixi, FrobotsClientPixi.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
