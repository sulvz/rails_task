# == Schema Information
#
# Table name: charge
#
#  id            :integer
#  paid          :boolean
#  amount        :float
#  currency      :string
#  refunded      :boolean
#  customer_id   :integer
#  created_at    :datetime
#  updated_at    :datetime

class Charge < ActiveRecord::Base

  belongs_to :customer

  validates :customer, :amount, presence: true
  validates :currency, inclusion: { in: %w(usd gbp eur inr) }

  scope :max_charging, -> { order("amount DESC").first }

  scope :successful, -> { where(paid: true, refunded: false) }
  scope :unsuccessful, -> { where(paid: false, refunded: false) }
  scope :refunded, -> { where(paid: true, refunded: true) }



end
