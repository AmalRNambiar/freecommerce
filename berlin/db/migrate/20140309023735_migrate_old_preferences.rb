class MigrateOldPreferences < ActiveRecord::Migration[4.2]
  def up
    if Calculator.respond_to?(:with_deleted)
      migrate_preferences(Calculator.with_deleted)
    else
      migrate_preferences(Calculator)
    end
    migrate_preferences(PaymentMethod)
    migrate_preferences(PromotionRule)
  end

  def down
  end

  private
  def migrate_preferences klass
    klass.reset_column_information
    klass.find_each do |record|
      store = Preferences::ScopedStore.new(record.class.name.underscore, record.id)
      record.defined_preferences.each do |key|
        value = store.fetch(key){}
        record.preferences[key] = value unless value.nil?
      end
      record.save!
    end
  end
end
