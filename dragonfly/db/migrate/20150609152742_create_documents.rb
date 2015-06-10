class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.string :attachment

      # vigilion column
      t.string :attachment_scan_results

      # dragonfly column
      t.string :attachment_uid

      t.timestamps null: false
    end
  end
end
