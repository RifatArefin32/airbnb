module Api
  class WishlistsController < ApplicationController
    protect_from_forgery with: :null_session

    def create
      wishlist = Wishlist.create!(wishlist_params)

      respond_to do |format|
        format.json do
          render json: wishlist.to_json, status: :ok
        end
      end
    end

    def destroy
      begin
        wishlist = Wishlist.find(params[:id])
        if wishlist.destroy
          render json: {
                   status: "success",
                   message: "Wishlist successfully deleted",
                 }, status: :ok
        else
          render json: {
                   status: "error",
                   message: "Failed to delete wishlist",
                 }, status: :unprocessable_entity
        end
      end
    rescue ActiveRecord::RecordNotFound => e
      render json: {
               status: false,
               message: e,
             }, status: :internal_server_error
    end

    private

    def wishlist_params
      params.permit(:user_id, :property_id)
    end
  end
end
