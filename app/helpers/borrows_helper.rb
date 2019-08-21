module BorrowsHelper

  def borrow_origin
    if params[:item_id]
      render partial: "borrows/form_partials/form_from_item", locals: { form_top_level: @item }
    elsif params[:recipient_id]
      render partial: "borrows/form_partials/form_from_recipient", locals: { form_top_level: @recipient }
    else
      render partial: "borrows/form_partials/form_from_borrow", locals: { form_top_level: current_lender }
    end
  end

  def no_borrows_tracked
    if current_lender.borrows.empty?
      render partial: "borrows/index_partials/partial_segments/no_borrows"
    else
      render partial: "borrows/index_partials/partial_segments/borrows_table_body"
    end
  end

  def no_returned_borrows
    if !current_lender.borrows.show_returned.exists? && !current_lender.borrows.empty?
      render partial: "borrows/index_partials/partial_segments/no_returned_borrows"
    elsif current_lender.borrows.empty?
      render partial: "borrows/index_partials/partial_segments/no_borrows"
    else
      render partial: "borrows/index_partials/partial_segments/scoped_borrows_table_body"
    end
  end

  def no_current_borrows
    if !current_lender.borrows.hide_returned.exists? && !current_lender.borrows.empty?
      render partial: "borrows/index_partials/partial_segments/no_current_borrows"
    elsif current_lender.borrows.empty?
      render partial: "borrows/index_partials/partial_segments/no_borrows"
    else
      render partial: "borrows/index_partials/partial_segments/scoped_borrows_table_body"
    end
  end

end
