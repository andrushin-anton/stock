class ItemsController < ApplicationController

  # GET /items
  # GET /items.json
  def index
    @items = Item.all.paginate(:page => params[:page], :per_page => 50)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:symbol, :name)
    end
end
