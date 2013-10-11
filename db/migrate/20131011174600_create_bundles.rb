class CreateBundles < ActiveRecord::Migration
  def change
    create_table :bundles do |t|
      t.belongs_to :playlist
      t.belongs_to :startup
    end
  end
end
