class CreatePrayers < ActiveRecord::Migration[6.1]
  def change
    create_table :prayers do |t|
      t.string :body
      t.string :name
      t.string :city
      t.string :state
      t.integer :star_counter

      t.timestamps
    end
  end
end
