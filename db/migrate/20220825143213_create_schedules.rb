class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|

      t.string :customer_id
      t.string :plan
      t.timestamps
    end
  end
end
