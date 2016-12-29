require_dependency "wcms/application_controller"

module Wcms
  class SlidersController < ApplicationController
    before_action :set_slider, only: [:show, :edit, :update, :destroy]
    # layout :choose_layout
    # GET /sliders
    # GET /sliders.json
    def index
      @sliders = Slider.all
    end

    # GET /sliders/1
    # GET /sliders/1.json
    def show
    end

    # GET /sliders/new
    def new
      @slider = Slider.new
    end

    # GET /sliders/1/edit
    def edit
    end

    # POST /sliders
    # POST /sliders.json
    def create
      @slider = Slider.new(slider_params)

      respond_to do |format|
        if @slider.save
          format.html { redirect_to [:admin,@slider], notice: 'Slider was successfully created.' }
          format.json { render :show, status: :created, location: @slider }
        else
          format.html { render :new }
          format.json { render json: @slider.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /sliders/1
    # PATCH/PUT /sliders/1.json
    def update
      respond_to do |format|
        if @slider.update(slider_params)
          format.html { redirect_to [:admin,@slider], notice: 'Slider was successfully updated.' }
          format.json { render :show, status: :ok, location: @slider }
        else
          format.html { render :edit }
          format.json { render json: @slider.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /sliders/1
    # DELETE /sliders/1.json
    def destroy
      @slider.destroy
      respond_to do |format|
        format.html { redirect_to admin_sliders_url, notice: 'Slider was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_slider
        @slider = Slider.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def slider_params
        params.require(:slider).permit(:title, :description,:image)
      end
  end
end
