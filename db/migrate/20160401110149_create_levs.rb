class CreateLevs < ActiveRecord::Migration
  def change
    create_table :levs do |t|

      t.timestamps null: false
    end
  end
end
