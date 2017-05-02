class AddDate2ToWorkouts < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts, :date2, :date
  end
end
