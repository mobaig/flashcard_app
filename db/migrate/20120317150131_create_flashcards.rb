class CreateFlashcards < ActiveRecord::Migration
  def change
    create_table :flashcards do |t|
      t.string :english
      t.string :pinyin
      t.string :character
      t.string :category

      t.timestamps
    end
  end
end
