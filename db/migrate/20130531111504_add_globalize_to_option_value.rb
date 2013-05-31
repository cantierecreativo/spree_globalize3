class AddGlobalizeToOptionValue < ActiveRecord::Migration
  def up
    Spree::OptionValue.create_translation_table!({
      name: :string, presentation: :string
    }, {
      migrate_data: true
    })
  end

  def down
    Spree::OptionValue.drop_translation_table! migrate_data: true
  end
end
