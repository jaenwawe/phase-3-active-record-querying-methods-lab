class CreateShows < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t|

    t.integer :rating
    t.string :name
    t.string :network
    t.string :day
    end
  end
end
