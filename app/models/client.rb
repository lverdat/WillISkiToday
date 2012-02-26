class Client < ActiveRecord::Base
  validates_length_of :login, :within => 3..20
  validates_length_of :pass, :within => 3..20
  validates_uniqueness_of :login, :pass
  
  def self.authenticate(login, pass)
    return Client.where(:login => login, :pass => pass);
  end
end
