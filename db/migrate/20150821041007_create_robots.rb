class CreateRobots < ActiveRecord::Migration
  def change
    create_table :robots do |t|
      t.string :name
      t.text :info

      t.timestamps null: false
    end
  end
end
