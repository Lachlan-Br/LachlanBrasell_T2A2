class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.date :DOC
      t.string :version
      t.float :price
      t.integer :available
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
