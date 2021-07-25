class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :body
      t.string :name
      t.string :city
      t.string :state
      t.belongs_to :prayer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
