class ArmorsController < ApplicationController
  before_action :set_armor, only: [:show, :update, :destroy]

  # GET /armors
  def index
    @armors = Armor.all

    render json: @armors
  end

  # GET /armors/1
  def show
    render json: @armor
  end

  # POST /armors
  def create
    @armor = Armor.new(armor_params)

    if @armor.save
      render json: @armor, status: :created, location: @armor
    else
      render json: @armor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /armors/1
  def update
    if @armor.update(armor_params)
      render json: @armor
    else
      render json: @armor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /armors/1
  def destroy
    @armor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_armor
      @armor = Armor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def armor_params
      params.require(:armor).permit(:name, :enchant, :ensorcell, :critical_services, :damage_services, :weight, :armor_base_id, :asg)
    end
end
