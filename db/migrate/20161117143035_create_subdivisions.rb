class CreateSubdivisions < ActiveRecord::Migration[5.0]
  def change
    create_table :subdivisions do |t|
      t.string :fullname
      t.string :name
      t.string :leader

      t.timestamps
    end
  end
end
