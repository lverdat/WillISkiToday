class Evaluation < ActiveRecord::Base
    belongs_to :run
    belongs_to :client
end
