class Run < ActiveRecord::Base
  belongs_to :hill
  belongs_to :run_type
  
  has_many :evaluations, :dependent => :destroy
end
