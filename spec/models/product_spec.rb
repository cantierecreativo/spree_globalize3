require 'spec_helper'

describe Spree::Product do

  context "attributes translations" do
    subject(:product) {
      p = create(:product)
      p.set_translations en: { name: "Product #1", description: "An amazing product!", meta_keywords: "english key", meta_description: "english description" },
                         it: { name: "Prodotto #1", description: "Un prodotto meraviglioso!", meta_keywords: "key italiana", meta_description: "descrizione italiana" }
      p
    }

    context "english" do
      before(:all) { I18n.locale = :en }

      its(:name) { should eq "Product #1" }
      its(:description) { should eq "An amazing product!" }
      its(:meta_keywords) { should eq "english key" }
      its(:meta_description) { should eq "english description" }
    end

    context "italiano" do
      before(:all) { I18n.locale = :it }

      its(:name) { should eq "Prodotto #1" }
      its(:description) { should eq "Un prodotto meraviglioso!" }
      its(:meta_keywords) { should eq "key italiana" }
      its(:meta_description) { should eq "descrizione italiana" }
    end
  end

end
