class CreateTrainingPlans < ActiveRecord::Migration[7.0]
  def change
    create_table :training_plans do |t|
      t.string :category
      t.string :description
      t.integer :duration

      t.timestamps
    end
  end
end
