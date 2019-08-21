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

end
