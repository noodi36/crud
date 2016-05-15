class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
  
      t.text    :reply
      t.integer :box_id
      #어떤 글에 대한 리플인지 명시. 모델의 이름_id
      #꼭 약속을 지켜야 함 
      
      t.timestamps null: false
    end
  end
end
