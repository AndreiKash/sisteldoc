class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :surname
      t.string :name
      t.string :patronymic
      t.string :login
      t.boolean :leader
      t.integer :rank
      t.integer :subdivision
      t.boolean :write
      t.boolean :read

      t.timestamps
    end
  end
end
