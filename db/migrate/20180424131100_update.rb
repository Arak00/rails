class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.timestamps
    end
    create_table :articles do |t|
      t.belongs_to :users, index: true
      t.timestamps
    end
  end
end

class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :name
      t.text :body
      t.string :description

      t.timestamps
    end
    create_table :categories do |t|
      t.belongs_to :articles, index: true
      t.timestamps
    end
  end
end

class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end
    create_table :categories do |t|
      t.belongs_to :articles, index: true
      t.timestamps
    end
  end
end
