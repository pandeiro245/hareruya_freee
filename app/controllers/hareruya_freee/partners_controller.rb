require_dependency "hareruya_freee/application_controller"

module HareruyaFreee
  class PartnersController < ApplicationController
    def show
      @partner = Partner.find(params[:id])
      render layout: 'application'
    end
  end
end
