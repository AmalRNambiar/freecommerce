class Preference < Base
  serialize :value

  validates :key, presence: true, uniqueness: { case_sensitive: false, allow_blank: true }
end
