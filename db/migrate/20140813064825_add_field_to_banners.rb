class AddFieldToBanners < ActiveRecord::Migration
  def change
    add_column :banners, :banner_type, :string

    add_column :banners, :top,    :boolean
    add_column :banners, :right,  :boolean
    add_column :banners, :bottom, :boolean
    add_column :banners, :left,   :boolean
    
    add_column :banners, :link, :string
    add_column :banners, :html, :text 
  end
end
