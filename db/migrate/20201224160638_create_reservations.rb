class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :email
      t.string :startDate
      t.string :time
      t.integer :numOfPeople

      t.timestamps
    end
  end
end
