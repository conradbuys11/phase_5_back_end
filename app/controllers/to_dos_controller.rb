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

    def show
        to_do = ToDo.find(params[:id])
        render json: to_do.to_json()
    end

    def update
        to_do = ToDo.find(params[:id])
        to_do.update(strong_params)
        render json: to_do.to_json()
    end

    def destroy
        to_do = ToDo.find(params[:id])
        to_do.destroy
        render json: ToDo.all
    end

    private
    def strong_params
        params.require(:to_do).permit(:title, :urgency, :is_completed)
    end
end
