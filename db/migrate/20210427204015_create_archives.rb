class CreateArchives < ActiveRecord::Migration[5.0]
  def change
    create_table :archives do |t|
      t.belongs_to :folder
      t.string :name     

      t.timestamps
    end
  end
end
