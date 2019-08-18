class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def new
  @note = Note.new
  end

  def create
    Note.create(note_params)
    redirect_to root_path
  end

private

  def note_params
    params.require(:note).permit(:name, :date, :description)
  end

end
