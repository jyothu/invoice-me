class Invitation < ActiveRecord::Base
	belongs_to :business
	after_create :send_email
	validates :email, uniqueness: { scope: :business_id}

  def send_email
    UserMailer.notify(self).deliver
  end
end
