class Pin < ActiveRecord::Base
	validates_presence_of :description
	belongs_to :user
	belongs_to :board
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user
	validates_presence_of :description, :image, :board_id
	has_attached_file :pin_image, styles: { medium: "300x300>", thumb: "100x100>" }
	validates_attachment_content_type :pin_image, content_type: /\Aimage\/.*\Z/



end