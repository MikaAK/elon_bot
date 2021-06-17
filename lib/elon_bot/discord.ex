defmodule ElonBot.Discord do
  @webhook_url ElonBot.Config.discord_webhook_url()
  @headers [{"Content-Type", "application/json"}]

  def post_in_channel(message) do
    res = :post
      |> Finch.build(@webhook_url, @headers, Jason.encode!(%{content: message}))
      |> Finch.request(ElonBot.Discord.Finch)

    with {:ok, _} <- res do
      :ok
    end
  end
end
