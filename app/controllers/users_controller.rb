class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @item = Item.new
    @items = Item.where(@user == current_user)
  end
end
