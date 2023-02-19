class CreateCatRentalRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :cat_rental_requests do |t|
      t.references :cat, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.string :status

      t.timestamps
    end
  end
end
