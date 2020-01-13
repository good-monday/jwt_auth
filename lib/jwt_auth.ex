defmodule JwtAuth do
  use Guardian.Plug.Pipeline, otp_app: :jwt_auth

  plug Guardian.Plug.Pipeline,
    module: JwtAuth.Module,
    error_handler: JwtAuth.ErrorHandler
  plug Guardian.Plug.VerifyHeader
  plug Guardian.Plug.EnsureAuthenticated
end
