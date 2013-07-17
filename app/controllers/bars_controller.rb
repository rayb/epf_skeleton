class BarsController < ApplicationController

  respond_to :json

  def show
    @bar = Bar.find(params[:id])
    render json: @bar, serializer: BarSerializer
  end

  def index
    render json: Bar.limit(10),
           each_serializer: BarSerializer
  end

  def create
    client_id = params[:bar][:client_id]
    input = params[:bar].except(:client_id)
    bar =  Bar.create(input)
    bar.client_id = client_id
    respond_with bar
  end

  def update
    respond_with Bar.update(params[:id], params[:bar])
  end

  def destroy
    respond_with Bar.destroy(params[:id])
  end

end