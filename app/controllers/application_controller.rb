class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session
    helper_method :warehouses_list

    def warehouses_list
        @warehouses = Warehouse.all
    end
end
