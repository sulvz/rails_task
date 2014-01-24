class ChargesController < ApplicationController

  def index
    @failed_charges = Charge.unsuccessful
    @disputed_charges = Charge.refunded
    @successful_charges = Charge.successful
  end

  def new
    @charge = Charge.new(currency: 'usd')
  end

  def show
    @charge = Charge.find(params[:id])
  end

  def create
    @charge = Charge.new(charge_params)

    respond_to do |format|
      if @charge.save
        format.html { redirect_to root_path, notice: 'Charge successfuly done' }
      else
        format.html { render action: :new, notice:'Can not make charge because of some errors: ' + @charge.errors.map { |_,m| m.to_s }.join(', ') }
      end
    end
  end

  private

  def charge_params
    params.require(:charge).permit(:amount, :paid, :refunded, :customer_id, :amount_currency)
  end

end
