class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.text :content, null: false
      t.integer :pastime_id, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
