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
    redirect_to new_flashcard_path
  end
  
  def build_deck
    deck_construction = Flashcard.build_deck
    if deck_construction
      flash.now[:notice] = "Deck built!"
    else
      flash.now[:error] = "Something went wrong. Deck not generated correctly."
    end
    render 'build_deck'
  end
end
