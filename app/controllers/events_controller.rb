class EventsController < ApplicationController
    def create
        event = Event.new(strong_params)
        event.date = DateTime.parse(params[:event][:date])
        event.save
        render json: event.to_json()
    end

    def index
        events = Event.all
        render json: events.to_json()
    end

    def show
        event = Event.find(params[:id])
        render json: event.to_json()
    end

    def update
        event = Event.find(params[:id])
        event.update(strong_params)
        render json: event.to_json()
    end

    def destroy
        event = Event.find(params[:id])
        event.destroy
        render json: Event.all
    end

    def event_and_to_dos
        events = Event.all
        to_dos = ToDo.all
        all = events + to_dos
        render json: all.to_json()
    end

    private
    def strong_params
        params.require(:event).permit(:title, :date, :calendar_id)
    end
end
