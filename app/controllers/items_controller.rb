class ItemsController < ApplicationController
  before_action :set_item, only: %i[ show edit update destroy ]
  Before_action :authenticate_user! , only: [ :new, :create, edit:, :update, :destroy]
  Before_action :is_seller, only: [ :new, :create]
  Before_action :check_ownership, only: [ :update, :destroy, :edit]

  # GET /items or /items.json
  def index
    @items = Item.all
  end

  # GET /items/1 or /items/1.json
  def show
  end

  # GET /items/new - updated for address and application
  def new
    @item = Item.create(item_params)
    @item.application = Application.new
  end

  # GET /items/1/edit
  def edit
  end
#all json deleted not needed for HTML coding.
  # POST /items or /items.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to item_url(@item), notice: "Item was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1 or /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to item_url(@item), notice: "Item was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1 or /items/1.json
  def destroy
    @item.destroy

    respond_to do |format|
      format.html { redirect_to items_url, notice: "Item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  #this is to make sure only sellers can create items and not everyone.
  def isSeller
    if !current_user.seller?
      redirect_to items_url, alert: "You must opt in to be a seller in order to make new listings."
    end
  end

  def check_ownership
    if !current_user.admin? and current_user.id!=@items.user_id 
      redirect_to items_url, alert: "You must be the seller or and Admin to do this."
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    #edited for user ID to show uploaded items.
    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:name, :DOC, :version, :price, :available, :user_id, applications_attributes: [ :creator, :techstack, :description, :specifications])
    end
end
