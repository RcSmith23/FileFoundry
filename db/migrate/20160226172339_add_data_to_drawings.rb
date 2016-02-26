class AddDataToDrawings < ActiveRecord::Migration
  def change
    add_column :drawings, :downloads, :integer

    create_table :tags do |t|
      t.string :name
    end

    create_table :drawings_tags, id: false do |t|
      t.belongs_to :drawings, index: true
      t.belongs_to :tags, index: true
    end
  end
end
