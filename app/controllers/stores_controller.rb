class StoresController < ApplicationController
  before_action :authenticate_user!
  before_action :owned_store, only: [:edit, :update, :destroy]

  def index
    @stores = Store.all
  end

  def new
    @store = current_user.stores.build
  end

  def create
    @store = current_user.stores.build(store_params)

    if @store.save
      flash[:success] = "Your store has been created!"
      redirect_to stores_path
    else
      flash[:alert] = "Your new store couldn't be created!
Please check the form."
      render :new
    end

  end

  def show
    @store = Store.find(params[:id])
  end

  def edit
    @store = Store.find(params[:id])
  end

  def update
    @store = Store.find(params[:id])
    @store.update(store_params)
    redirect_to(store_path(@store))
  end

  def destroy
    @store = Store.find(params[:id])
    @store.destroy
    redirect_to stores_path

  end

  private

  def store_params
    params.require(:store).permit(:image, :caption)
  end

  def set_store
    @store = Store.find(params[:id])
  end

  def owned_store
    unless current_user == @store.user
      flash[:alert] = "This store doesn't belong to you!"
      redirect_to root_path
    end
  end
end
