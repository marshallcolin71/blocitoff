class ItemsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @item = Item.new(item_params)
    @item.user = current_user
    @new_item = Item.new

    if @item.save
      flash[:notice] = "To-Do list has been successfully updated"
      redirect_to [@user]
    else
      flash.now[:alert] = "Sorry, there was an error updating. Please try again"
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      flash[:notice] = "\"#{item.name}\" was deleted successfully."
    else
      flash.now[:alert] = "There was an error deleting the post. Please try again."
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end

end
