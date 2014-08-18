class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :uid
      t.string :title
      t.text :description
      t.reference :user

      t.timestamps
    end
  end
end
