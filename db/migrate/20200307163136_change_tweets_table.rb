class ChangeTweetsTable < ActiveRecord::Migration[6.0]
  def change
    change_table :tweets do |t|
      t.integer :user_id
    end
  end
end
