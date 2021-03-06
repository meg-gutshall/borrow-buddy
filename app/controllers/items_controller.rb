class ItemsController < ApplicationController
  before_action :authenticate_lender!
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :check_stray, only: [:show, :edit, :update, :destroy]

  # GET /items
  def index
    @items = Item.lender_scope(current_lender).abc_name
  end

  # GET /items/1
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to @item, notice: 'Item was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /items/1
  def update
    if @item.update(item_params)
      redirect_to @item, notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /items/1
  def destroy
    @item.destroy
    redirect_to lender_items_path(current_lender), notice: 'Item was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions
    def set_item
      @item = Item.lender_scope(current_lender).find_by(id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through
    def item_params
      params.require(:item).permit(:name, :category)
    end

    def check_stray
      if @item.nil?
        redirect_to lender_items_path(current_lender), alert: "You do not have permission to view or edit other lenders' items."
      end
    end
end
