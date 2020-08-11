class InstrumentsController < ApplicationController

    def index
        @instruments = Instrument.all
    end

    def show
        @instrument = Instrument.find(params[:id])
    end

    def new
        @instrument = Instrument.new
    end

    def create
        @instrument = Instrument.create(instrument_params)
        if @instrument.save
            redirect_to instrument_path(@instrument)
        else
            flash[:my_error] = @instrument.errors.full_messages
            redirect_to new_instrument_path
        end
    end

    private

    def instrument_params
        params.require(:instrument).permit(:name, :classification)
    end
end
