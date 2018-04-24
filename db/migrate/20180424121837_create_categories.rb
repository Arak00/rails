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
