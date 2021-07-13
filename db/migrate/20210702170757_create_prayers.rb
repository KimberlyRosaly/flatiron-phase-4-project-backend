class CreatePrayers < ActiveRecord::Migration[6.1]
  def change
    create_table :prayers do |t|
      t.string :body
      t.integer :counter, :default => 0 # 'PRAYED-FOR' BEGINS WITH '0' UNTIL HUMANS CLICK BUTTON ON DOM TO INCREMENT VALUE
      # WHEN CREATING NEW OBJECT - SET '0' AS DEFAULT VALUE
      
      t.string :human_name, :default => 'ANONYMOUS'
      t.string :human_city, :null => true
      # DATABASE MAY ACCEPT 'NULL' VALUES
      t.string :human_state, :null => true
      # DATABASE MAY ACCEPT 'NULL' VALUES

      t.timestamps
    end
  end
end
