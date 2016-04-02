# Server

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add server to your list of dependencies in `mix.exs`:

        def deps do
          [{:server, "~> 0.0.1"}]
        end

  2. Ensure server is started before your application:

        def application do
          [applications: [:server]]
        end

## Running

Start the elixir interpreter in the project directory, and create a Server process:

```
amy@nightjar ~/w/server> iex -S mix
iex(1)> {:ok, _} = Plug.Adapters.Cowboy.http Server, []
{:ok, #PID<0.197.0>}
iex(2)> 
```
