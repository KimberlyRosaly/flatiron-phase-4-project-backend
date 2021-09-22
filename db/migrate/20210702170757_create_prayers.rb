class CreatePrayers < ActiveRecord::Migration[6.1]
  def change
    create_table :prayers do |t|
      t.string :body

      t.string :name, :default => 'ANONYMOUS'
      t.string :city, :null => true
      # DATABASE MAY ACCEPT 'NULL' VALUES
      t.string :state, :null => true
      # DATABASE MAY ACCEPT 'NULL' VALUES

      t.integer :star_counter, :default => 0 # '0' UNTIL HUMANS CLICK BUTTON ON DOM TO INCREMENT VALUE
      # WHEN CREATING NEW OBJECT - SET '0' AS DEFAULT VALUE

      t.timestamps
    end
  end
end


