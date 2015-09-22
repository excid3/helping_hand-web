class ReassociationPagesToExceptions < ActiveRecord::Migration
  def change
    remove_column :pages, :exception_id
    add_column :pages, :class_name, :string
    add_column :pages, :message, :string

    add_index :pages, [:class_name, :message]
  end
end
