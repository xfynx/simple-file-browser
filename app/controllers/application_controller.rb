class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_locale

  # using this for check locale in browser
  def set_locale
    I18n.locale = request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
  end
end
