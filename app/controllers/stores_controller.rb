class StoresController < ApplicationController
  before_action :authenticate_user!
  before_action :owned_store, only: [:edit, :update, :destroy]

  def index

    @search = Store.search do
      fulltext params[:search]
    end
    @stores = @search.results

  end

  def new
    @store = current_user.stores.build
  end

  def create
    @store = current_user.stores.build(store_params)
    if @store.save
      redirect_to store_path(@store)
    else
      render :new
    end
  end

  def show
    @store = Store.find(params[:id])
    @comment = Comment.new
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
    params.require(:store).permit(:image, :image2, :image3, :image4, :caption, :zipcode, :long_description)
  end

  def set_store
    @store = Store.find(params[:id])
  end

  def owned_store
    @store = Store.find(params[:id])
    unless current_user == @store.user
      redirect_to root_path
    end
  end
end
