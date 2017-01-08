require_dependency "wcms/application_controller"

module Wcms
  class MenusController < ApplicationController
    before_action :set_menu, only: [:show, :edit, :update, :destroy]

    # GET /menus
    def index
      @menus = Menu.all
      respond_to do |format|
        format.html { render 'wcms/menus/index'}
      end
    end

    # GET /menus/1
    def show
    end

    # GET /menus/new
    def new
      @menu = Menu.new
    end

    # GET /menus/1/edit
    def edit
    end

    # POST /menus
    def create
      @menu = Menu.new(menu_params)
      if @menu.save
        redirect_to @menu, notice: 'Menu was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /menus/1
    def update
      if @menu.update(menu_params)
        redirect_to @menu, notice: 'Menu was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /menus/1
    def destroy
      @menu.destroy
      redirect_to menus_url, notice: 'Menu was successfully destroyed.'
    end

    def translation
    end

    def add_translation
      I18n.locale = params[:language].to_sym
      menu = Menu.find params[:id]
      menu.title = params[:title]
      menu.save!
      redirect_to menus_path
    end


    private
      # Use callbacks to share common setup or constraints between actions.
      def set_menu
        @menu = Menu.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def menu_params
        params.require(:menu).permit(:title, :link, :order, :parent_id)
      end
  end
end
