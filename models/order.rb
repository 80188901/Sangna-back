class Order
  include Mongoid::Document
  include Mongoid::Timestamps # adds created_at and updated_at fields
 belongs_to :shop
 belongs_to :server
 belongs_to :technician
 belongs_to :room
  # field <name>, :type => <type>, :default => <value>
   field :applydate, :type=>DateTime
   field :remark, :type=>String
 field :isuse,:type=>Boolean,:default=>false
  # You can define indexes on documents using the index macro:
  # index :field <, :unique => true>

  # You can create a composite key in mongoid to replace the default id using the key macro:
  # key :field <, :another_field, :one_more ....>
end
