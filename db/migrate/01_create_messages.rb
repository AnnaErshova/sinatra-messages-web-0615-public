# Define a Migration that will create a messages table with columns:

# from that is a string
# to that is a string
# content that is text
# timestamps

class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :to
      t.string :from
      t.text :content
      t.timestamps null: false # this is the first time I actually see timestamps as useful
      # use with created_at
    end
  end
end
