class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.string :customer_id
      t.string :body

      t.timestamps
    end
  end
end
