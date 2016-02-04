class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :tweet_text
      t.string :username

      t.timestamps null: false
    end
  end
end
