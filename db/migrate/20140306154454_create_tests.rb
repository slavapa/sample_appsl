class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :content

      t.timestamps
    end
  end
end
