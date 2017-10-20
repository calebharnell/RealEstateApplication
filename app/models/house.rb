class House < ApplicationRecord
  belongs_to :user
  
  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

  acts_as_punchable

  def full_address
    "#{address}, #{city} #{state} #{postcode} #{country}"
  end
end
