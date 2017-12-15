class Api::V1::CatsController < Api::V1::ApiController
  def index
    breed = params[:breed]
    age = params[:age]
    gender = params[:gender]
    if breed
      @cats = Cat.breed_search(breed)
    elsif age
      @cats = Cat.age_search(age)
    elsif gender
      @cats = Cat.gender_search(gender)
    else
      @cats = Cat.all
    end
    json_response(@cats)
  end

  def show
    @cat = Cat.find(params[:id])
    json_response(@cat)
  end

  def random
   @cat = Cat.random
   json_response(@cat)
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
    params.permit(:name, :breed, :age, :gender, :declawed, :location, :bio)
  end
end
