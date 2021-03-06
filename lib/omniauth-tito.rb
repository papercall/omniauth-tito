require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Tito < OmniAuth::Strategies::OAuth2
      # change the class name and the :name option to match your application name
      option :name, :tito

      option :client_options, {
        :site => ENV['TITO_OAUTH_URL'] || "https://api.tito.io",
        :authorize_url => "/oauth/authorize"
      }

      uid { raw_info["id"] }

      info do
        {
          :email => raw_info["email"]
          # and anything else you want to return to your API consumers
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/me.json').parsed
      end
    end
  end
end
