module LoansHelper

  def loan_origin
    if params[:item_id]
      render partial: "loans/form_partials/form_from_item", locals: { form_top_level: @item }
    elsif params[:recipient_id]
      render partial: "loans/form_partials/form_from_recipient", locals: { form_top_level: @recipient }
    else
      render partial: "loans/form_partials/form_from_loan", locals: { form_top_level: current_lender }
    end
  end

  def no_loans_tracked
    if current_lender.loans.empty?
      render partial: "loans/index_partials/partial_segments/no_loans"
    else
      render partial: "loans/index_partials/partial_segments/loans_table_body"
    end
  end

  def no_returned_loans
    if !current_lender.loans.show_returned.exists? && !current_lender.loans.empty?
      render partial: "loans/index_partials/partial_segments/no_returned_loans"
    elsif current_lender.loans.empty?
      render partial: "loans/index_partials/partial_segments/no_loans"
    else
      render partial: "loans/index_partials/partial_segments/scoped_loans_table_body"
    end
  end

  def no_current_loans
    if !current_lender.loans.hide_returned.exists? && !current_lender.loans.empty?
      render partial: "loans/index_partials/partial_segments/no_current_loans"
    elsif current_lender.loans.empty?
      render partial: "loans/index_partials/partial_segments/no_loans"
    else
      render partial: "loans/index_partials/partial_segments/scoped_loans_table_body"
    end
  end

end
