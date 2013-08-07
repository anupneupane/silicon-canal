class EventCategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  # GET /categories
  def index
    @categories = EventCategory.all
  end

  # GET /categories/1
  def show
  end

  # GET /categories/new
  def new
    @category = EventCategory.new
  end

  # GET /categories/1/edit
  def edit
  end

  # POST /categories
  def create
    @category = EventCategory.new(category_params)

    if @category.save
      redirect_to @category, notice: 'EventCategory was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /categories/1
  def update
    if @category.update(category_params)
      redirect_to @category, notice: 'EventCategory was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /categories/1
  def destroy
    @category.destroy
    redirect_to event_categories_url, notice: 'EventCategory was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = EventCategory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def category_params
      params.require(:category).permit(:name)
    end
end
