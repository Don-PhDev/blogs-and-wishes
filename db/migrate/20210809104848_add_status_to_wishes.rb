class AddStatusToWishes < ActiveRecord::Migration[6.1]
  def change
    add_column :wishes, :status, :string, null: false, default: "Waiting"
  end
end
