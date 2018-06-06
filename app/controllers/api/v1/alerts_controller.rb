class Api::V1::AlertsController < Api::V1::BaseController

  def index
    alerts = Alert.all
    render json: alerts, each_serializer: Api::V1::AlertSerializer
  end

  def show
    user = Alert.find(params[:id])
    render json: user, serializer: Api::V1::AlertSerializer
  end

end