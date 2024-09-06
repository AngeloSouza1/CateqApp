class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  before_action :authenticate_user!  # Garante que o usuário esteja logado
  allow_browser versions: :modern
end
