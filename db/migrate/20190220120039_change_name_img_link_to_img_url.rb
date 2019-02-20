class ChangeNameImgLinkToImgUrl < ActiveRecord::Migration[5.2]
  def change
    rename_column :restaurants, :img_link, :img_url
  end
end
