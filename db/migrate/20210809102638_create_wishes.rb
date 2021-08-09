class CreateWishes < ActiveRecord::Migration[6.1]
  def change
    create_table :wishes do |t|
      t.string :name
      t.datetime :expected_date

      t.timestamps
    end
  end
end
