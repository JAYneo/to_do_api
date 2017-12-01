class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :description
      t.boolean :completed
      t.references :list, foreign_key: true
      t.timestamps
    end
  end
end
