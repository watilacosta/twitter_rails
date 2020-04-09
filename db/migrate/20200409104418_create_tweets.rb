class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.text :body
      t.references :user, null: false, foreign_key: true
      t.integer :tweet_original_id

      t.timestamps
    end
  end
end
