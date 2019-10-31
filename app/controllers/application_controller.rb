class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound do
    render json: { error: 'No such record in Database; check params',
                   status: :not_found,
    }
  end

  def catch_404
    raise ActionController::RoutingError.new(params[:path])
  end
end
