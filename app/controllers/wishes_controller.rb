class WishesController < ApplicationController
  before_action :set_wish, only: [:update_status, :show, :edit, :update, :destroy]

  def index
    @wishes = Wish.all
  end

  def update_status
    @wish.update(status: params[:status])
    redirect_to @wish, notice:"Wish status is changed to #{@wish.status}"
  end

  def new
    @wish = Wish.new
  end

  def create
    @wish = Wish.new(wish_params)
    if @wish.save
      redirect_to wishes_path, notice: "Wish added!"
    else
      render :new
    end
  end

  def show
  end

  def update
    if @wish.update(wish_params)
      redirect_to wishes_path, notice: "Wish updated!"
    else
      render :edit
    end
  end

  def destroy
    if @wish.destroy
      redirect_to wishes_path, notice: "Wish deleted!"
    end
  end

  private
    
  def wish_params
    params.require(:wish).permit(:name, :expected_date, :created_at)
  end

  def set_wish
    @wish = Wish.find(params[:id])
  end
end
