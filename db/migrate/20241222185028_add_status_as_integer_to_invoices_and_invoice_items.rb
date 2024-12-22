class AddStatusAsIntegerToInvoicesAndInvoiceItems < ActiveRecord::Migration[7.0]
  def change
    add_column :invoices, :status, :integer, default: 0, null: false
    add_column :invoice_items, :status, :integer, default: 0, null: false
  end
end

