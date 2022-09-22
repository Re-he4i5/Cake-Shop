class Item < ApplicationRecord
  has_one_attached :image
  belongs_to :genre

  has_many :cart_items, dependent: :destroy
  has_many :order_details

  validates :name, presence: true
  validates :introduction, presence: true

  def get_image(width, height)
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'no_image.jpg', content_type: 'image/jpeg')
    end
    image.variant(resize_to_limit: [width, height]).processed
  end

  def with_tax_price
    #(price * 1.1).ceil
    # ceilは切り上げ
    (price * 1.1).round
    # round:四捨五入
  end

end
