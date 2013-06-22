Spree::Taxon.class_eval do
  translates :name, :description,
             :fallbacks_for_empty_translations => true
end
