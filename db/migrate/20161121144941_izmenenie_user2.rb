class IzmenenieUser2 < ActiveRecord::Migration[5.0]
  def change
  	add_index :users, [:subdivision_id, :created_at]
  end
end
