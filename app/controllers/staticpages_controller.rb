class StaticpagesController < ApplicationController
  def home
      @user_id = params[:user_id]
      unless @user_id.nil?
        get_user_info
        get_photo_ids
      end
  end
end
