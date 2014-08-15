class ChangeStringToTextInArticles < ActiveRecord::Migration
  def up
     change_column :articles, :text, :text
 end
 def down
     # This might cause trouble if you have strings longer
     # than 255 characters.
     change_column :articles, :text, :string
 end
end
