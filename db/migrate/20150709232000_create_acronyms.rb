class CreateAcronyms < ActiveRecord::Migration
  def change
    create_table :acronyms do |t|
      t.string :name
      t.string :definition
      t.string :description
      t.timestamps null: false
    end
  end
end
