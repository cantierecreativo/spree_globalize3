require 'spec_helper'

describe "Edit Product", js: true do
  let!(:admin) { create :admin_user }
  let!(:product) { create :simple_product }

  before(:all) { I18n.locale = :en; I18n.available_locales = [:en, :it] }

  stub_authorization!

  it "shows the language tabs on edit products" do
    visit spree.admin_path
    click_link "Products"
    within_row(1) { click_icon :edit }
    click_link 'Product Details'

    within('[data-hook="admin_product_form_fields"]') do
      expect(page).to have_css ".available-locales"
      expect(page).to have_content "English"
      expect(page).to have_content "Italian"
    end
  end

end
