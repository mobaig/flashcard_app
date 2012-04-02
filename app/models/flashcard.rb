class Flashcard < ActiveRecord::Base
  
  def self.build_deck
    card_data = XMLCardParser.retrieve_card_data
    card_data.each do |c|
      Flashcard.create( :english => c.english,
                        :pinyin => c.pinyin,
                        :character => c.character,
                        :category => c.category)
    end
  end
end
