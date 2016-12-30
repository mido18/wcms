require_dependency "wcms/application_controller"

module Wcms
  class ImageBlocksController < ApplicationController
    before_action :set_image_block, only: [:show, :edit, :update, :destroy]

    # GET /image_blocks
    # GET /image_blocks.json
    def index
      @image_blocks = ImageBlock.all
    end

    # GET /image_blocks/1
    # GET /image_blocks/1.json
    def show
    end

    # GET /image_blocks/new
    def new
      @image_block = ImageBlock.new
    end

    # GET /image_blocks/1/edit
    def edit
    end

    # POST /image_blocks
    # POST /image_blocks.json
    def create
      @image_block = ImageBlock.new(image_block_params)

      respond_to do |format|
        if @image_block.save
          format.html { redirect_to @image_block, notice: 'Image block was successfully created.' }
          format.json { render :show, status: :created, location: @image_block }
        else
          format.html { render :new }
          format.json { render json: @image_block.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /image_blocks/1
    # PATCH/PUT /image_blocks/1.json
    def update
      respond_to do |format|
        if @image_block.update(image_block_params)
          format.html { redirect_to @image_block, notice: 'Image block was successfully updated.' }
          format.json { render :show, status: :ok, location: @image_block }
        else
          format.html { render :edit }
          format.json { render json: @image_block.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /image_blocks/1
    # DELETE /image_blocks/1.json
    def destroy
      @image_block.destroy
      respond_to do |format|
        format.html { redirect_to image_blocks_url, notice: 'Image block was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_image_block
        @image_block = ImageBlock.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def image_block_params
        params.require(:image_block).permit(:name,:image)
      end
  end
end
