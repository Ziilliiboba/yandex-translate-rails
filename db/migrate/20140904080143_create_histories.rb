class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.text :before_translate
      t.text :after_translate

      t.timestamps
    end
  end
end
