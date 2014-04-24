class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :timeframe
      t.string :blurb
      t.text :description
      t.string :repo
      t.string :demo
      t.string :image_src

      t.timestamps
    end
  end
end
