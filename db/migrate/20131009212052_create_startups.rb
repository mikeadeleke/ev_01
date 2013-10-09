class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :name
      t.string :URl
      t.text :description

      t.timestamps
    end
  end
end
