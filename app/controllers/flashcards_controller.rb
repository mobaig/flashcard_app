class FlashcardsController < ApplicationController
  def index
    @flashcards = Flashcard.all
  end

  def new
    @flashcard = Flashcard.new
  end

  def create
    @flashcard = Flashcard.new(params[:flashcard])
    @flashcard.save
    flash[:notice] = "Card created"
    redirect_to new_flashcard_path
  end
end
