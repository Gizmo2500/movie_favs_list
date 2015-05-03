class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :title
      t.string :poster_url
      t.string :plot
      t.string :comment
      t.references :user
      t.timestamps null: false
    end
  end
end
