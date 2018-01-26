class Order < ApplicationRecord

  belongs_to :user
  has_many :products_lists

  validates :billing_name,presence:true
  validates :billing_address,presence:true
  validates :shipping_name,presence:true
  validates :shipping_address,presence:true


  before_create :generate_token

  include AASM
  aasm do
    state :order_placed,initial:true
    state :paid
    state :shipping
    state :order_cancelled
    state :good_returned


    event :make_payment,after_commit: :pay! do

      transitions from: :order_placed,to: :paid

    end

    event :ship do

      transitions from: :shipping, to: :shipped
    end

    event :cancell_order do

      transitions from: [:order_placed,:paid], to: :order_cancelled

    end


  end





  def generate_token

    self.token = SecureRandom.uuid
  end

  def set_payment_with!(method)

    self.update_columns(payment_method: method)

  end

  def pay!

    self.update_columns(paid_at: Time.now )

  end


end
