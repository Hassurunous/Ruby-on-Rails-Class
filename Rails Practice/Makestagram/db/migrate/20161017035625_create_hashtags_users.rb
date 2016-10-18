class CreateHashtagsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :hashtags_users do |t|
      t.references :hashtag, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
