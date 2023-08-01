class CreateGossipTags < ActiveRecord::Migration[7.0]
  def change
    create_join_table :gossips, :tags do |t|
      t.timestamps
    end
  end
end
