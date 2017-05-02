class RemoveDate2FromWorkouts < ActiveRecord::Migration[5.0]
  def change
    remove_column :workouts, :date2, :string
  end
end
