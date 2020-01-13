# JwtAuth

Wraps a Guardian pipeline for JWT authentication.

## Installation

The package can be installed
by adding `jwt_auth` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:jwt_auth, git: "https://github.com/good-monday/jwt_auth.git", tag: "0.4.0"}
  ]
end
```

## Configuration

Configure JwtAuth in your config file

```elixir
config :jwt_auth, JwtAuth.Module,
  issuer: "issuer:_name",
  secret_key: "a_secret_secret",
  allowed_algos: ["HS256", "HS384", "HS512", ...]
```

## Usage

JwtAuth is not available to be used as a Plug

```elixir
plug JwtAuth
```
