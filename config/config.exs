# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :captalivros_web,
  ecto_repos: [CaptalivrosWeb.Repo]

# Configures the endpoint
config :captalivros_web, CaptalivrosWebWeb.Endpoint,
  url: [host: "localhost"],
  http: [log_error_on_incomplete_requests: false, protocol_options: [max_request_line_length: 8192, max_header_value_length: 8192]],
  secret_key_base: "rIiKcZavp3V3E64p/aSOazOvLBgBbTttRLIEWVDVJ9XvcwDkvS2kPdcfvLtD5m4r",
  render_errors: [view: CaptalivrosWebWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CaptalivrosWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# %% Coherence Configuration %%   Don't remove this line
config :coherence,
  user_schema: CaptalivrosWeb.Coherence.User,
  repo: CaptalivrosWeb.Repo,
  module: CaptalivrosWeb,
  web_module: CaptalivrosWebWeb,
  router: CaptalivrosWebWeb.Router,
  messages_backend: CaptalivrosWebWeb.Coherence.Messages,
  logged_out_url: "/",
  email_from_name: "Your Name",
  email_from_email: "yourname@example.com",
  opts: [:authenticatable, :recoverable, :lockable, :trackable, :unlockable_with_token, :confirmable, :registerable]

config :coherence, CaptalivrosWebWeb.Coherence.Mailer,
  otp_app: :swoosh,
  adapter: Swoosh.Adapters.SMTP,
  port: 587,
  relay: "smtp.gmail.com",
  username: "junior123nelson@gmail.com",
  password: "junior@123",
  tls: :always,
  auth: :always# %% End Coherence Configuration %%
# %% End Coherence Configuration %%
