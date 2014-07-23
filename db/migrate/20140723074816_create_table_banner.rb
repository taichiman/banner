class CreateTableBanner < ActiveRecord::Migration
  def change
    create_table :table_banners do |t|
      t.string :name
    end
  end
end
