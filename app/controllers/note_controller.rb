class NoteController < ApplicationController

    def create
      note = Note.new(title: params[:title],note: params[:note])
      if note.save
        AuthorNote.create(user_id: params[:user_id], note_id: note.id)
        render json: note
      end
    end

    def edit
    end

    def show
      notes = []
      AuthorNote.where(user_id: params[:user_id]).pluck(:note_id).each do |note_id|
        notes << Note.find(note_id)
      end
      render json: notes
    end

    def delete

    end

end
