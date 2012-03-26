class FlashcardsController < ApplicationController
  
  def index
    @flashcard = Flashcard.all
  end
  
  def new
    @flashcard = Flashcard.new
  end
  
  def create
    @flashcard = Flashcard.new(params[:flashcard])
    @flashcard.save
    redirect_to flashcards_path
  end
end
