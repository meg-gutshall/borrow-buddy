module BorrowersHelper
  def no_borrowers_tracked
    if current_lender.borrowers.empty?
      render partial: "borrowers/index_partials/no_borrowers"
    else
      render partial: "borrowers/index_partials/borrowers_table_body"
    end
  end
end
