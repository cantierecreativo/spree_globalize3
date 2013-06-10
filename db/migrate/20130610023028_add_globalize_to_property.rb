class AddGlobalizeToProperty < ActiveRecord::Migration
  def up
    Spree::Property.create_translation_table!({
      name: :string, presentation: :string
    },{
      migrate_data: true
    })
  end

  def down
    Spree::Property.drop_translation_table! migrate_data: true
  end
end
