class JsonWebToken
  class << self
    def encode(payload)
      JWT.encode(payload.merge!(meta), Rails.application.secrets.secret_key_base)
    end

    def decode(token)
      JWT.decode(token, Rails.application.secrets.secret_key_base)[0] rescue nil
    end
    
    def black_list
    end

    def meta
      {
        jti: SecureRandom.uuid
      }
    end
  end
end
