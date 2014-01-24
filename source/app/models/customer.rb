# == Schema Information
#
# Table name: customer
#
#  id            :integer
#  first_name    :string
#  last_name     :string
#  email         :string
#  created_at    :datetime
#  updated_at    :datetime

class Customer < ActiveRecord::Base

  has_many :charges, dependent: :destroy

  validates :first_name, :last_name, :email, presence: true


end
