resource "auth0_client" "vault" {
  name = "Vault"
  app_type = "regular_web"
  is_token_endpoint_ip_header_trusted = false
  oidc_conformant = true
  is_first_party = true
  callbacks = [ "http://vault.udcp.info:8200/ui/vault/auth/oidc/oidc/callback",
                "https://vault.udcp.info:8200/ui/vault/auth/oidc/oidc/callback",
                "http://vault.udcp.info:8250/oidc/callback",
                "https://vault.udcp.info:8250/oidc/callback"]
  grant_types = [ "authorization_code", "implicit", "refresh_token", "client_credentials" ]
  allowed_logout_urls = [ "http://vault.udcp.info:8250/" ]
  sso = false
  sso_disabled = false
  web_origins = []
  jwt_configuration {
    lifetime_in_seconds = 360000
    secret_encoded = false
    alg = "RS256"
    scopes = {}
  }
  refresh_token {
    rotation_type = "non-rotating"
    expiration_type = "non-expiring"
    leeway = 0
    token_lifetime = 31557600
    idle_token_lifetime = 2592000
    infinite_idle_token_lifetime = true
    infinite_token_lifetime = true
  }
}

resource "auth0_client" "dreamkast" {
  name = "Dreamkast"
  app_type = "regular_web"
  is_token_endpoint_ip_header_trusted = false
  oidc_conformant = true
  is_first_party = true
  logo_uri = "https://user-images.githubusercontent.com/79102/84803506-10d35380-b03d-11ea-9e1a-8df04ee3fa1d.png"
  callbacks = [ "http://localhost:3000/auth/auth0/callback",
                "http://localhost:8080/auth/auth0/callback",
                "http://10.9.8.171:3000/auth/auth0/callback" ]
  grant_types = [ "authorization_code", "implicit", "refresh_token", "client_credentials" ]
  allowed_logout_urls = [ "http://localhost:3000/",
                          "http://localhost:8080/",
                          "http://10.9.8.171:3000/" ]
  sso = false
  sso_disabled = false
  web_origins = []
  jwt_configuration {
    lifetime_in_seconds = 360000
    secret_encoded = false
    alg = "RS256"
    scopes = {}
  }
  refresh_token {
    rotation_type = "non-rotating"
    expiration_type = "non-expiring"
    leeway = 0
    token_lifetime = 31557600
    idle_token_lifetime = 2592000
    infinite_idle_token_lifetime = true
    infinite_token_lifetime = true
  }
}