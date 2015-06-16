class CreateReader < ActiveRecord::Migration
  def change
    create_table :readers do |t|
      t.string :full_name, null: false
      t.string :email
      t.string :phone
    end
  end
end
