class Order < ApplicationRecord

  belongs_to :user
  has_many :products_lists

  validates :billing_name,presence:true
  validates :billing_address,presence:true
  validates :shipping_address,persence:true
  validates :shipping_name,persence:true

  before_create :generate_token

  def generate_token

    slef.token = SecureRandom.uuid
  end


end
