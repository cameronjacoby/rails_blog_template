class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.text :content
      t.string :tagline
      t.string :image

      t.timestamps
    end
  end
end
