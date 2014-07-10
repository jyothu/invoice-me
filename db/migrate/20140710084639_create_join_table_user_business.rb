class CreateJoinTableUserBusiness < ActiveRecord::Migration
  def change
    create_join_table :users, :businesses do |t|
      t.index [:user_id, :business_id]
      t.index [:business_id, :user_id]
    end
  end
end
