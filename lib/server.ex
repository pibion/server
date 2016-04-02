defmodule Server do
use Plug.Router

  if Mix.env == :dev do
    use Plug.Debugger
  end

  plug :match
  plug :dispatch

  # about path
  get "/about" do
    send_resp(conn, 200, "This entire website runs on Elixir plugs!")
  end

  # external resource
  get "/home" do
    resp = HTTPoison.get! "google.com"
    send_resp(conn, 200, resp.body)
  end

  # get result of system command
  get "/ls" do
    {resp, _} = System.cmd "ls", []
    send_resp(conn, 200, resp)
  end
end
