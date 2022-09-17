class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :last_name
      t.string :first_name
      t.string :last_name_kana
      t.string :first_name_kana
      t.string :sex
      t.string :age
      t.string :postal_code
      t.string :address
      t.string :telephone_number
      t.string :care_number
      t.string :day

      t.boolean :is_deleted, default: false, null: false

      t.timestamps
    end
  end
end
