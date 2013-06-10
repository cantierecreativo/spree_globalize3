class AddGlobalizeToRole < ActiveRecord::Migration
  def up
    Spree::Role.create_translation_table!({
      name: :string
    },{
      migrate_data: true
    })
  end

  def down
    Spree::Role.drop_translation_table! migrate_data: true
  end
end
