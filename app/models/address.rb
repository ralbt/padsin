class Address < ActiveRecord::Base
  attr_accessible :address, :city, :country, :email, :landline, :mobile, :name, :pincode, :state, :area
  belongs_to :addressable, polymorphic: true
  acts_as_gmappable
  def gmaps4rails_address
  	"#{self.area}, #{self.city}, #{self.country}"
  end
end