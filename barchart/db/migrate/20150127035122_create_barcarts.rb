class CreateBarcarts < ActiveRecord::Migration
  def change
    create_table :barcarts do |t|

      t.timestamps
    end
  end
end
