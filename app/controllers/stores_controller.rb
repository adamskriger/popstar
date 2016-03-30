class StoresController < ApplicationController
  before_action :authenticate_user!

  def index
    @stores = Store.all
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.create(store_params)
    flash[:success] = "store has been set up"
    redirect_to stores_path
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

end
