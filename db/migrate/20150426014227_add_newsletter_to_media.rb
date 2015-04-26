class AddNewsletterToMedia < ActiveRecord::Migration
  def change
    add_column :media, :newsletter_id, :integer
  end
end
