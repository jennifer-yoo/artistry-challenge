class ArtistinstrumentsController < ApplicationController

    def new
        @artistinstrument = Artistinstrument.new
    end

    def create
        @artistinstrument = Artistinstrument.create(artistinstrument_params)
    end

    private

    def artistinstrument_params
        params.require(:artistinstrument).permit(:artist_id, :instrument_id)
    end
end
