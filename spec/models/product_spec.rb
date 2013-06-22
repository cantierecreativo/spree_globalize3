require 'spec_helper'

describe Spree::Product do

  context "attributes translations" do
    subject(:product) {
      p = create(:product)
      p.set_translations en: { name: "Product #1", description: "An amazing product!", meta_keywords: "english key", meta_description: "english description" },
                         it: { name: "Prodotto #1", description: "Un prodotto meraviglioso!", meta_keywords: "key italiana", meta_description: "descrizione italiana" }
      p.save!; p
    }

    context "english" do
      before(:all) { I18n.locale = :en }

      its(:name) { should eq "Product #1" }
      its(:description) { should eq "An amazing product!" }
      its(:meta_keywords) { should eq "english key" }
      its(:meta_description) { should eq "english description" }
      its(:permalink) { should eq "product-number-1" }
    end

    context "italiano" do
      before(:all) { I18n.locale = :it }

      its(:name) { should eq "Prodotto #1" }
      its(:description) { should eq "Un prodotto meraviglioso!" }
      its(:meta_keywords) { should eq "key italiana" }
      its(:meta_description) { should eq "descrizione italiana" }
      its(:permalink) { should eq "prodotto-number-1" }
    end
  end

  context "permalink translation" do
    let!(:product) { create :simple_product, name: "Foo" }

    it "adds a number when there's already a product with that name" do
      product2 = create :simple_product, name: "Foo"
      product3 = create :simple_product, name: "Foo"
      expect(product2.permalink).to eq "foo-1"
      expect(product3.permalink).to eq "foo-2"
    end
  end

end
