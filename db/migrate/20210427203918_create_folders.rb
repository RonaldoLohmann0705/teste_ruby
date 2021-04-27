class CreateFolders < ActiveRecord::Migration[5.0]
  def change
    create_table :folders do |t|
      t.references :parent, foreign_key: { to_table: :folders }
      t.string :name

      t.timestamps
    end
  end
end
