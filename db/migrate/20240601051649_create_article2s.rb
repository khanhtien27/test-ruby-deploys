class CreateArticle2s < ActiveRecord::Migration[7.1]
  def change
    create_table :article2s do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
