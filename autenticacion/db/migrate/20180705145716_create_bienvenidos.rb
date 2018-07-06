class CreateBienvenidos < ActiveRecord::Migration[5.0]
  def change
    create_table :bienvenidos do |t|
      t.string :name
      t.text :usuario

      t.timestamps
    end
  end
end
