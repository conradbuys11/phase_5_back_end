class ToDosController < ApplicationController

    def create
        to_do = ToDo.new(strong_params)
        to_do.is_completed = false
        to_do.calendar_id = 1
        to_do.save
        render json: to_do.to_json()
    end

    def index
        to_dos = ToDo.all
        render json: to_dos.to_json()
    end

    private
    def strong_params
        params.require(:to_do).permit(:title, :urgency)
    end
end
