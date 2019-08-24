class BorrowersController < ApplicationController
  before_action :authenticate_lender!
  before_action :set_borrower, only: [:show, :edit, :update, :destroy]
  before_action :check_stray, only: [:show, :edit, :update, :destroy]

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
    redirect_to lender_borrowers_path(current_lender), notice: 'Borrower was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions
    def set_borrower
      @borrower = Borrower.lender_scope(current_lender).find_by(id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through
    def borrower_params
      params.require(:borrower).permit(:name, :email, :phone)
    end

    def check_stray
      if @borrower.nil?
        redirect_to lender_borrowers_path(current_lender), alert: "You do not have permission to view or edit other lenders' borrowers."
      end
    end
end
