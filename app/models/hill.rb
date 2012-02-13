class Hill < ActiveRecord::Base
  has_many :runs, :dependent => :destroy
end
