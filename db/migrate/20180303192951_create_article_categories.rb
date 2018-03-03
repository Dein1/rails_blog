class CreateArticleCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :article_categories do |t|
      t.string :slug
      t.string :name

      t.timestamps
    end
  end
end
