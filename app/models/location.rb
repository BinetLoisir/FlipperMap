class Location < ActiveRecord::Base
  belongs_to :flip, foreign_key: 'flipper_id'
  belongs_to :bar
end
