module RecipientsHelper
  def no_recipients_tracked
    if current_lender.recipients.empty?
      render partial: "recipients/index_partials/no_recipients"
    else
      render partial: "recipients/index_partials/recipients_table_body"
    end
  end
end
