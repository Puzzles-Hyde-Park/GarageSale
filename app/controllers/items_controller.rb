class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :edit, :update, :destroy, :upvote]
  before_action :authenticate_user!

  def index
    @items = Item.all.order("created_at DESC")
  end

  def show
  end

  def new
    @item = current_user.items.build
  end

  def create
    @item = current_user.items.build(item_params)

    if @item.save
        redirect_to @item, notice: "Successfully created new Item"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to @item, notice: "Item was Successfully updated!"
    else
      render 'edit'
    end
  end

  def destroy
    @item.destroy
    redirect_to root_path
  end

  private

  def item_params
    params.require(:item).permit(:title, :desc, :price, :image)
  end

  def find_item
    @item = Item.find(params[:id])
  end
end
