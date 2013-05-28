class AddGlobalizeToTaxons < ActiveRecord::Migration
  def up
    Spree::Taxon.create_translation_table!({
      name: :string, description: :text
    }, {
      migrate_data: true
    })
  end

  def down
    Spree::Taxon.drop_translation_table! migrate_data: true
  end
end
