class VigilionScanDocumentsAttachment < ActiveRecord::Migration
  add_column :documents, :attachment_scan_results, :string
end