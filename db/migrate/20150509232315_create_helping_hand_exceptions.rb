class CreateHelpingHandExceptions < ActiveRecord::Migration
  def change
    create_table :helping_hand_exceptions do |t|
      t.string :class_name
      t.string :message
      t.integer :throws, default: 0

      t.timestamps null: false
    end
  end
end
