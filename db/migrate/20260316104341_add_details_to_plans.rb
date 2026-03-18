class AddDetailsToPlans < ActiveRecord::Migration[7.0]
  def change
    add_column :plans, :end_time, :datetime
    add_column :plans, :all_day, :boolean
  end
end
