class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :exception_id
      t.text :body

      t.timestamps null: false
    end
  end
end
