class PeopleController < ApplicationController
  before_action :person, only: [:show, :edit, :update, :destroy]

  def index
    # GET - All people
    @people = Person.all
  end

  def show
    # GET - Show a specific person
  end

  def new
    # GET - Shows the form to create a person
    @person = Person.new
  end

  def create
    # POST - Create a new person in the database
    @person = Person.create(person_params)
    redirect_to people_path
  end

  def edit
    # GET - Show the person form with values filled out
  end

  def update
    # PUT - Update the record in the database
    @person.update(person_params)
    redirect_to person_path(@person)
  end

  def destroy
    # DELETE - Destroy record in the database
    @person.destroy
    redirect_to people_path
  end

  def destroy_all
    Person.destroy_all
    redirect_to people_path
  end

  private
    def person_params
      params.require(:person).permit(:name, :age, :race, :hair_color, :eye_color, :alive, :married, :weight)
    end

    def person
      @person = Person.find(params[:id])
    end


end
