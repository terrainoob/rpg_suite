class Equipment < ActiveRecord::Base
  classy_enum_attr :equipment_type, default: 'gear'
end
