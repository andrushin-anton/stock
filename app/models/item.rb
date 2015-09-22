class Item < ActiveRecord::Base
  has_many :setups, foreign_key: 'symbol', primary_key: 'symbol'
end
