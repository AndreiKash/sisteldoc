class IzmenenieUser < ActiveRecord::Migration[5.0]
  def change
  	remove_index :subdivisions, [nil, :created_at]
  end
end
