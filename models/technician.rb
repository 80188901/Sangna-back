class Technician
  include Mongoid::Document
  include Mongoid::Timestamps # adds created_at and updated_at fields
belongs_to :shop
has_many :orders
has_one :technician_info
has_many :comments
  # field <name>, :type => <type>, :default => <value>
  field :name, :type => String
  field :number, :type => Integer
  field :gender, :type => Boolean
  field :situation, :type => Boolean
  field :wordtime,:type=>Time
  field :password,:type=>String
  field :iswork,:type=>Boolean,:default=>false

  # You can define indexes on documents using the index macro:
  # index :field <, :unique => true>

  # You can create a composite key in mongoid to replace the default id using the key macro:
  # key :field <, :another_field, :one_more ....>
end
