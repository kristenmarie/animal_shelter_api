class ApplicationController < ActionController::API
  include Response

  rescue_from ActiveRecord::RecordNotFound do |exception|
    json_respone({ message: exception.message }, :not_found)
  end
  
end
