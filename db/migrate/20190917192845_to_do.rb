class ToDo < ActiveRecord::Migration
  def change
    create_table :to_do do |t|
      t.string :priority
      t.string :date
      t.string :activity_to_do
    end
  end
end
