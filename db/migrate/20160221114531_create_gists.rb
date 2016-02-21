class CreateGists < ActiveRecord::Migration
  def change
    create_table :gists do |t|
      t.string :name
      t.string :description
      t.text :content

      t.timestamps null: false
    end
  end
end
