class AddForeignkeyToGists < ActiveRecord::Migration
  def change
    add_reference :gists, :category, index: true, foreign_key: true
  end
end
