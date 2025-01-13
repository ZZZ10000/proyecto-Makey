class CreateContents < ActiveRecord::Migration[7.2]
  def change
    create_table :contents do |t|
      t.string :title
      t.text :description
      t.string :file
      t.string :category

      t.timestamps
    end
  end
end
