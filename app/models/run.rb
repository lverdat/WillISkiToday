class Run < ActiveRecord::Base
  belongs_to :hill
  belongs_to :run_type
end
