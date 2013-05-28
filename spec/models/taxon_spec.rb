require 'spec_helper'

describe Spree::Taxon do

  context "attributes translations" do
    subject(:taxon) {
      p = create(:taxon)
      p.set_translations en: { name: "Category", description: "A category" },
                         it: { name: "Categoria", description: "Una categoria" }
      p
    }

    context "english" do
      before(:all) { I18n.locale = :en }

      its(:name) { should eq "Category" }
      its(:description) { should eq "A category" }
    end

    context "italiano" do
      before(:all) { I18n.locale = :it }

      its(:name) { should eq "Categoria" }
      its(:description) { should eq "Una categoria" }
    end
  end

end
