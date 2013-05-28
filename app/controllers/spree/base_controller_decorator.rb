Spree::BaseController.class_eval do

  private

  def set_user_language
    I18n.locale = params[:locale].presence || I18n.default_locale
  end
end
