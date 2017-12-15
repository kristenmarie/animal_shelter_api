class Api::V1::CatsController < Api::V1::ApiController
  def index
    @cats = Cat.all
    json_response(@cats)
  end

  def show
    @cat = Cat.find(params[:id])
    json_response(@cats)
  end

  def create
    @cat = Cat.create!(cat_params)
    json_response(@cat, :created)
  end

  def update
    @cat = Cat.find(params[:id])
    if @cat.update!(cat_params)
      render status: 200, json: {
        message: "This cat has been updated successfully."
      }
    end
  end

  def destroy
    @cat = Cat.find(params[:id])
    @cat.destroy
  end


  private

  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def cat_params
    params.permit(:name, :breed, :age, :gender, :declawed, :location)
  end
end