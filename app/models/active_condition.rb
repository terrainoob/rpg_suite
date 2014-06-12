class ActiveCondition < ActiveRecord::Base
  belongs_to :condition
  belongs_to :conditionable, polymorphic: true
end
