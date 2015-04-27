class CreateDesignFirms < ActiveRecord::Migration
  def change
    create_table :design_firms do |t|
      t.text :name
      t.text :email

      t.timestamps null: false
    end
  end
end
