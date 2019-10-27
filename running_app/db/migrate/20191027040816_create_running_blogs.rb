class CreateRunningBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :running_blogs do |t|
      t.string :title
      t.string :author
      t.string :date
      t.string :content
      t.string :picture

      t.timestamps
    end
  end
end
