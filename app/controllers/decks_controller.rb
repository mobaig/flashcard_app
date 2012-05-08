class DecksController < ApplicationController
  def show
  end

  def edit
  end

  def update
    xml_file_url = params[:xml_location][:url]
    deck_construction = Deck.build_deck(xml_file_url)
    if deck_construction
      flash.now[:notice] = "Deck built!"
    else
      flash.now[:error] = "Something went wrong. Deck not generated correctly."
    end
    render :action => 'edit'
  end
end
