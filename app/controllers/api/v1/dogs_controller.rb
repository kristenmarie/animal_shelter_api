class Api::V1::DogsController < Api::V1::ApiController
  def index
    breed = params[:breed]
    age = params[:age]
    gender = params[:gender]
    if breed
      @dogs = Dog.breed_search(breed)
    elsif age
      @dogs = Dog.age_search(age)
    elsif gender
      @dogs = Dog.gender_search(gender)
    else
      @dogs = Dog.all
    end
    json_response(@dogs)
  end

  def show
    @dog = Dog.find(params[:id])
    json_response(@dog)
  end

  def random
   @dog = Dog.random
   json_response(@dog)
  end

  def create
    @dog = Dog.create!(dog_params)
    json_response(@dog, :created)
  end

  def update
    @dog = Dog.find(params[:id])
    if @dog.update!(dog_params)
      render status: 200, json: {
        message: "This dog has been updated successfully."
      }
    end
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
  end


  private

  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def dog_params
    params.permit(:name, :breed, :age, :gender, :declawed, :location, :bio)
  end
end
