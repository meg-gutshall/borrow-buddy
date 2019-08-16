module BorrowsHelper
  
  def boolean_display(attribute)
    attribute == true ? "Yes" : "No"
  end

  def borrow_origin
    if params[:item_id]
      render 'borrows/form_from_item'
    elsif params[:recipient_id]
      render 'borrows/form_from_recipient'
    else
      render 'borrows/form_from_borrow'
    end
  end

end
