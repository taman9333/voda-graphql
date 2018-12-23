module Exceptions
  # require 'active_support/all'
  extend ActiveSupport::Concern
  
  included do
    rescue_from(ActiveRecord::RecordNotFound) do |error|
      error.message
    end
  end

end