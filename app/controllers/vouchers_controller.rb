class VouchersController < ApplicationController
  def index
    @voucher = Voucher.all
    @q = @voucher.ransack(params[:q])
    @pagy, @voucher = pagy(@q.result(distinct: true), items: params[:per_page])
  end

  def new
    @voucher = Voucher.new
    @voucher.voucher_timelines.new
  end

  def create
    @voucher = Voucher.new(voucher_params)
    if @voucher.save
      redirect_to  vouchers_path
    else
      redirect_to vouchers_path
    end
  end

  def edit
    @voucher = Voucher.find(params[:id])
  end

  def update
    @voucher = Voucher.find(params[:id])
    if @voucher.update(voucher_params)
      redirect_to vouchers_path
    else
      render :edit
    end
  end

  def destroy
    @voucher = Voucher.find(params[:id])
    @voucher.destroy
    redirect_back(fallback_location:  vouchers_path)
  end

  private

  def voucher_params
    params.require(:voucher).permit(:voucher_status, :promo_code, :discount_id, voucher_timelines_attributes: [:id, :valid_to, :valid_from])
  end
end
