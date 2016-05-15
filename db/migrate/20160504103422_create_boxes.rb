class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      
      t.string  :title
      t.text    :content
      
      t.timestamps null: false
    end
  end
end
