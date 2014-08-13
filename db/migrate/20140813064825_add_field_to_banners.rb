class AddFieldToBanners < ActiveRecord::Migration
  def change
    add_column :banners, :banner_type, :string
    add_column :banners, :place,:string
    add_column :banners, :link, :string
    add_column :banners, :html, :text 
  end
end
