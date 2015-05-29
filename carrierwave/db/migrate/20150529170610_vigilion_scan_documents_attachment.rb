class VigilionScanDocumentsAttachment < ActiveRecord::Migration
  def change
    add_column :documents, :attachment_scan_results, :string
  end
end