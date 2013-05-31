require 'spec_helper'

describe Spree::OptionType do

  context "attributes translations" do
    subject(:option_type) {
      p = create(:option_type)
      p.set_translations en: { name: "color-shirt",   presentation: "Color" },
                         it: { name: "colore-maglia", presentation: "Colore" }
      p
    }

    context "english" do
      before(:all) { I18n.locale = :en }

    end

    context "italiano" do
      before(:all) { I18n.locale = :it }

      its(:name) { should eq "colore-maglia" }
      its(:presentation) { should eq "Colore" }
    end
  end

end
