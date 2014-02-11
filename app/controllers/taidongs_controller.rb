class TaidongsController < ApplicationController
  before_action :set_taidong, only: [:show, :edit, :update, :destroy]
  before_filter :authentication

  def index
    render :json => @account.taidongs
  end

  def create
    @account.taidongs << params[:taidongs]
    @account.last_sync_at = Time.no
    if @account.save
      head :success
    else
      head :unprocessable_entity
    end
  end



  private

  def set_taidong
    @taidong = Taidong.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def taidong_params
    params.require(:taidong).permit(:happened_at, :account_id, :batch_id)
  end

  def authentication
    authenticate_or_request_with_http_basic do |email, password|
      @account = Account.find_by_email email
      @account.password_valid? password
    end
  end
end
