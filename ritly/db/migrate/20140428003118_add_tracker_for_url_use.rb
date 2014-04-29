class AddTrackerForUrlUse < ActiveRecord::Migration
  def change
  	add_column :urls, :visit_count, :integer, default: 0
  end
end
