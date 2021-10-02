class CreateTickets < ActiveRecord::Migration[6.1]
  def change
      create_table :tickets do |t|
        t.string :date

        t.belongs_to :guest
        t.belongs_to :show
    end
  end
end