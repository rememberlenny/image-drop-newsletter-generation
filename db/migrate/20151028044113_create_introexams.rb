class CreateIntroexams < ActiveRecord::Migration
  def change
    create_table :introexams do |t|
      t.string :title
      t.text :message
      t.string :picture1
      t.text :testimonial1
      t.string :picture2
      t.text :testimonial2
      t.string :picture3
      t.text :testimonial3

      t.timestamps
    end
  end
end
