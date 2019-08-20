module BorrowsHelper

  def borrow_origin
    if params[:item_id]
      render 'borrows/form_from_item', locals: { form_object: @item }
    elsif params[:recipient_id]
      render 'borrows/form_from_recipient', locals: { form_object: @recipient }
    else
      render 'borrows/form_from_borrow', locals: { form_object: current_lender }
    end
  end

end
