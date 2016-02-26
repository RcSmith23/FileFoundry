class AddLicenseToDrawings < ActiveRecord::Migration
  def change
    add_column :drawings, :license, :text
  end
end
