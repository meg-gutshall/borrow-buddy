module ItemsHelper
  def no_items_tracked
    if current_lender.items.empty?
      render partial: "items/index_partials/no_items"
    else
      render partial: "items/index_partials/items_table_body"
    end
  end
end
