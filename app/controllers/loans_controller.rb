class LoansController < ApplicationController
  before_action :authenticate_lender!
  before_action :set_loan, only: [:show, :edit, :return, :update, :destroy]
  before_action :check_stray, only: [:show, :edit, :return, :update, :destroy]

  # GET /loans
  def index
    @loans = Loan.loan_lender_scope(current_lender)
  end

  # GET /loans/1
  def show
  end

  def current_loans
    @loans = Loan.loan_lender_scope(current_lender).hide_returned
  end

  def returned_loans
    @loans = Loan.loan_lender_scope(current_lender).show_returned
  end

  # GET /loans/new
  def new
    @loan = current_lender.loans.build
    if params[:item_id]
      @item = Item.find_by(id: params[:item_id])
      @loan.build_borrower
    elsif params[:borrower_id]
      @borrower = Borrower.find_by(id: params[:borrower_id])
      @loan.build_item
    else
      @loan.build_borrower
      @loan.build_item
    end
  end

  # GET /loans/1/edit
  def edit
  end

  # POST /loans
  def create
    @loan = current_lender.loans.build(loan_params)

    if @loan.save
      if params[:item_id]
        @item = Item.find_by(id: params[:item_id])
        redirect_to item_path(@item), notice: 'Loan was successfully created.'
      elsif params[:borrower_id]
        @borrower = Borrower.find_by(id: params[:borrower_id])
        redirect_to borrower_path(@borrower), notice: 'Loan was successfully created.'
      else
        redirect_to lender_loan_path(current_lender, @loan), notice: 'Loan was successfully created.'
      end
    else
      render :new
    end
  end

  # GET /loans/1/return
  def return
    @loan.update(returned: true)
    redirect_to lender_loan_path(current_lender, @loan), notice: 'Loan was successfully returned.'
  end
  
  # PATCH/PUT /loans/1
  def update
    if @loan.update(loan_params)
      redirect_to lender_loan_path(current_lender, @loan), notice: 'Loan was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /loans/1
  def destroy
    @loan.destroy
    redirect_to lender_loans_path(current_lender), notice: 'Loan was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions
    def set_loan
      @loan = Loan.loan_lender_scope(current_lender).find_by(id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through
    def loan_params
      params.require(:loan).permit(:days_borrowed, :reminders_sent, :returned, :lender_id, :item_id, :borrower_id, borrower_attributes: [:name, :email, :phone], item_attributes: [:name, :category])
    end

    def check_stray
      if @loan.nil?
        redirect_to lender_loans_path(current_lender), alert: "You do not have permission to view or edit other lenders' loans."
      end
    end
end
