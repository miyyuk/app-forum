class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string     :name, null: false
      t.text       :text,   null: false
      t.references :topic, foreign_key: true
      t.references :user,  foreign_key: true
      t.timestamps
    end
  end
end
