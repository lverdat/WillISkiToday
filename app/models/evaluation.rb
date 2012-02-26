class Evaluation < ActiveRecord::Base
    belongs_to :run
    belongs_to :client
    
    validates_presence_of :note
    validates_presence_of :snowQual
end
