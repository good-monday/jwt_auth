defmodule JwtAuth do
  use Guardian.Plug.Pipeline, otp_app: :jwt_auth

  plug Guardian.Plug.Pipeline,
    module: PhoenixPlaygroundWeb.Auth.Guardian,
    error_handler: PhoenixPlaygroundWeb.Auth.AuthErrorHandler
  plug Guardian.Plug.VerifyHeader
  plug Guardian.Plug.EnsureAuthenticated
end
