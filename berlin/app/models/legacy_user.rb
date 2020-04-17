# Default implementation of User.  This class is intended to be modified by extensions (ex. spree_auth_devise)
class LegacyUser < Base
  include UserAddress
  include UserPaymentSource
  include UserMethods

  self.table_name = 'spree_users'

  attr_accessor :password
  attr_accessor :password_confirmation
end

