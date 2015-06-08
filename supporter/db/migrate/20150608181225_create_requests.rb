class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :name
      t.string :email
      t.string :department_sales
      t.string :department_marketing
      t.string :department_technical
      t.text :message

      t.timestamps null: true
    end
  end
end
