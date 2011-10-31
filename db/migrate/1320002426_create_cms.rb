class CreateCms < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :post_id

      t.timestamps
    end
    create_table :categories do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
    create_table :pages do |t|
      t.string :title
      t.integer :parent_id

      t.timestamps
    end

    create_table :tags do |t|
      t.string :name
    end

    create_table :page_parts do |t|
      t.string  :title
      t.text    :content
      t.integer :page_id

      t.timestamps
    end

    create_table :posts_tags, :id => false do |t|
      t.integer :post_id
      t.integer :tag_id
    end
    create_table :categories_posts, :id => false do |t|
      t.integer :post_id
      t.integer :category_id
    end
    create_table :categories_pages, :id => false do |t|
      t.integer :page_id
      t.integer :category_id
    end

    create_table :comments do |t|
      t.integer :user_id
      t.integer :parent_id
      t.integer :post_id
      t.boolean :approved
      t.string :author
      t.string :author_website
      t.string :author_email
      t.text :content

      t.timestamps
    end
  end
end
