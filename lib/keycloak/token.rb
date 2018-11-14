module Keycloak
  class Token
    attr_accessor :access_token, :expires_in, :refresh_expires_in, :refresh_token, :token_type, :not_before_policy, :session_state, :scope

    def initialize(options = {})
      options.each do |k, v|
        self.send("#{k}=", v)
      end
    end
  end
end