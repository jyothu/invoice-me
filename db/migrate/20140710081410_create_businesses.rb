class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :logo
      t.string :name
      t.string :description
      t.string :owner_id

      t.timestamps
    end
  end
end
