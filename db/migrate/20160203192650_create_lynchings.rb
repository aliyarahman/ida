class CreateLynchings < ActiveRecord::Migration
  def change
    create_table :lynchings do |t|
      t.integer :year
      t.string :month
      t.integer :day
      t.string :month
      t.string :name
      t.string :city
      t.string :state
      t.string :allegation

      t.timestamps
    end
  end
end
