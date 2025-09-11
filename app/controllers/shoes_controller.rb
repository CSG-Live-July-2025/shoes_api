class ShoesController < ApplicationController
  def index
    shoes = Shoe.all

    render json: shoes
  end

  def show
    shoe = Shoe.find(params[:id])

    render json: shoe
  end

  def create
    shoe = Shoe.create(
      name: params[:name],
      manufacturer: params[:manufacturer],
      size: params[:size]
    )

    render json: shoe
  end

  def update
    shoe = Shoe.find(params[:id])

    shoe.update(
      name: params[:name] || shoe.name,
      manufacturer: params[:manufacturer] || shoe.manufacturer,
      size: params[:size] || shoe.size
    )

    render json: shoe
  end

  def destroy
    shoe = Shoe.find(params[:id])

    shoe.destroy

    render json: { message: "Shoe Deleted..." }
  end
end
