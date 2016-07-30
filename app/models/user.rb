class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_one :profile
  
  enum role: [:client, :administrator, :offer]
			
	after_initialize :set_default_role
	
  after_create :set_default_profile
  
  def set_default_profile
    profile = Profile.new
    profile.user = self
    profile.save
  end
  
  def friendly_name
    self.profile.first_name.nil? ? self.email : self.profile.full_name  
  end
  
  def set_default_role
    				self.role ||= :client
  end

end
