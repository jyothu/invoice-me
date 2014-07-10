class Business < ActiveRecord::Base
	has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
  has_and_belongs_to_many :users
  has_many :invitations
  belongs_to :owner, class_name: "User", foreign_key: "owner_id"
end
