class DestinationsController < ApplicationController
  def edit
    @destination = Destination.find(params[:id])
  end

  def update
    @destination = Destination.find(params[:id])
    if @destination.update_attributes(destination_params)
      redirect_to(:action => 'show', :id => @destination.id)
    else
      render 'edit'
    end
  end

  def show
    @destination = Destination.find(params[:id])
  end

  private
  def destination_params
    params.require(:destination).permit(:name, :description)
  end
end
