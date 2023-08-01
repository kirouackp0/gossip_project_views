class CreatePrivateMessageRecipients < ActiveRecord::Migration[7.0]
  def change
    create_table :private_message_recipients do |t|
      t.text :content
      t.references :sender, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
