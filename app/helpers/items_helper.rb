module ItemsHelper
  def no_items_tracked
    if current_lender.items.empty?
      render partial: "items/index_partials/no_items"
    else
      render partial: "items/index_partials/items_table_body"
    end
  end

  def no_item_category(loan)
    if loan.item.category.blank?
      tag.a "#{loan.item.name}", href: lender_item_path(current_lender, loan.item)
    else
      tag.a "#{loan.item.name_with_category}", href: lender_item_path(current_lender, loan.item)
    end
  end
end
