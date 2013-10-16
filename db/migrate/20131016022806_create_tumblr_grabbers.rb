class CreateTumblrGrabbers < ActiveRecord::Migration
  def change
    create_table :tumblr_grabbers do |t|
      t.string :url
      t.integer :vote

      t.timestamps
    end
  end
end
