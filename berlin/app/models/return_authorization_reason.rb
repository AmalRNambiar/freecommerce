class ReturnAuthorizationReason < Base
  include Spree::NamedType

  has_many :return_authorizations, dependent: :restrict_with_error
end
