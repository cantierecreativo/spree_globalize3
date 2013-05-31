class AddGlobalizeToOptionType < ActiveRecord::Migration
  def up
    Spree::OptionType.create_translation_table!({
      name: :string, presentation: :string
    }, {
      migrate_data: true
    })
  end

  def down
    Spree::OptionType.drop_translation_table! migrate_data: true
  end
end
