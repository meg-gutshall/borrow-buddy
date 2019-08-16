class BorrowsController < ApplicationController
  before_action :authenticate_lender!
  before_action :set_borrow, only: [:show, :edit, :update, :destroy]

  # GET /borrows
  def index
    @borrows = Borrow.lender_scope(current_lender)
  end

  # GET /borrows/1
  def show
  end

  # GET /borrows/new
  def new
    @borrow = current_lender.borrows.build
    @borrow.build_recipient
    @borrow.build_item
  end

  # GET /borrows/1/edit
  def edit
  end

  # POST /borrows
  def create
    @borrow = current_lender.borrows.build(borrow_params)

    if @borrow.save
      redirect_to lender_borrow_path(current_lender, @borrow), notice: 'Borrow was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /borrows/1
  def update
    if @borrow.update(borrow_params)
      redirect_to lender_borrow_path(current_lender, @borrow), notice: 'Borrow was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /borrows/1
  def destroy
    @borrow.destroy
    redirect_to lender_borrows_path(current_lender), notice: 'Borrow was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions
    def set_borrow
      @borrow = Borrow.find_by(id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through
    def borrow_params
      params.require(:borrow).permit(:days_borrowed, :reminders_sent, :returned, :lender_id, :item_id, :recipient_id, recipient_attributes: [:name, :email, :phone], item_attributes: [:name, :category])
    end
end
