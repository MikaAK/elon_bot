import Config

config :elon_bot, :twitter_bearer_token, ""
config :elon_bot, :discord_webhook_url, ""

import_config "./config.secrets.exs"
