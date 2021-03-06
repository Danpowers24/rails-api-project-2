class DaysController < ProtectedController
  before_action :set_day, only: %i[show update destroy]

  # GET /days
  def index
    # Don't need the .all
    @days = current_user.days.all

    render json: @days
  end

  # GET /days/1
  def show
    render json: @day
  end

  # POST /days
  def create
    @day = current_user.days.build(day_params)

    if @day.save
      render json: @day, status: :created, location: @day
    else
      render json: @day.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /days/1
  def update
    if @day.update(day_params)
      render json: @day
    else
      render json: @day.errors, status: :unprocessable_entity
    end
  end

  # DELETE /days/1
  def destroy
    @day.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_day
    @day = current_user.days.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def day_params
    params.require(:day).permit(:date, :pain_level, :notes)
  end
end
