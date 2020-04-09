# frozen_string_literal: true

module Api
  module V1
    # Class principal da API
    class ApiController < ApplicationController
      include Knock::Authenticable
      include CanCan::ControllerAdditions
    end
  end
end
