class CreateGamecenters < ActiveRecord::Migration
  def change
    create_table :gamecenters do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
