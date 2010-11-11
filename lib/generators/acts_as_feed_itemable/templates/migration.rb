class CreateFeedItems < ActiveRecord::Migration
  def self.up
    create_table :feed_items, :force => true do |t|
      t.integer  :user_id,      :null => false
      t.integer  :item_id,      :null => false
      t.string   :item_type,    :null => false
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :feed_items
  end
end
