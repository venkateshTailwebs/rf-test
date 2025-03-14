class ApplicationController < ActionController::Base
  before_action :disable_session, :set_cache_headers_to_public

  def disable_session
    # will not set Set-cokkie param on response headers
    request.session_options[:skip] = true
  end

  def set_cache_headers_to_public
    response.headers["Cache-Control"] = "public"
  end
end
