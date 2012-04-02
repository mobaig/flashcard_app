class XMLCardParser
  require 'ostruct'
  
  def self.retrieve_card_data
    file = File.open('public/chinesepod_vocab_201200327.xml')
    doc = Nokogiri::XML(file)

    all_xml_cards = doc.css("word")
    card_data_for_deck = []

    all_xml_cards.each do |c|
      card_data = OpenStruct.new
      card_data.character = c.css("zh_cn").first.content
      card_data.pinyin = c.css("pinyin").first.content
      card_data.english = c.css("en").first.content
      card_data.category = c.css("tag").first.content
      card_data_for_deck << card_data
    end

    card_data_for_deck
  end
end