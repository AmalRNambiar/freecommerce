class RemoveEnvironmentFromTracker < ActiveRecord::Migration[4.2]
  class Spree::Tracker < Base; end

  def up
    Spree::Tracker.where('environment != ?', Rails.env).update_all(active: false)
    remove_column :trackers, :environment
  end
end
