class BorrowersController < ApplicationController
  before_action :authenticate_lender!
  before_action :set_borrower, only: [:show, :edit, :update, :destroy]

  # GET /borrowers
  def index
    @borrowers = Borrower.lender_scope(current_lender).abc_name
  end

  # GET /borrowers/1
  def show
  end

  # GET /borrowers/new
  def new
    @borrower = Borrower.new
  end

  # GET /borrowers/1/edit
  def edit
  end

  # POST /borrowers
  def create
    @borrower = Borrower.new(borrower_params)

    if @borrower.save
      redirect_to @borrower, notice: 'Borrower was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /borrowers/1
  def update
    if @borrower.update(borrower_params)
      redirect_to @borrower, notice: 'Borrower was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /borrowers/1
  def destroy
    @borrower.destroy
    redirect_to borrowers_url, notice: 'Borrower was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions
    def set_borrower
      @borrower = Borrower.find_by(id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through
    def borrower_params
      params.require(:borrower).permit(:name, :email, :phone)
    end
end
