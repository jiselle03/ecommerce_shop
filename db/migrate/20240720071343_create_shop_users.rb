class CreateShopUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :shop_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
