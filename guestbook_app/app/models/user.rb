class User < ActiveRecord::Base
  validates_presence_of :name, :email, :occupation, :city, :entry
end
