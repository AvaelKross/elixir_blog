# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :blog_phoenix, BlogPhoenix.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "eoFyN/HxSJ0AE5d5rfL4FURpzRPYJBZurmulMCewkuZOZbuD61ELWDmBbkYSjUAk",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: BlogPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false

config :addict,
  secret_key: "243262243132247177672f675369466478453537516f76557870305165",
  #extra_validation: BlogPhoenix.User.validate,
  user_schema: BlogPhoenix.User,
  repo: BlogPhoenix.Repo,
  from_email: "no-reply@example.com", # CHANGE THIS
mail_service: nil