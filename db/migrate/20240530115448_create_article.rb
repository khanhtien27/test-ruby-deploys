class CreateArticle < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :authur, null: false
      t.timestamps
    end
  end
end
